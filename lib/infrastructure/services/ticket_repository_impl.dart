import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/file_model.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/ticket_model.dart';
import 'package:surf_flutter_study_jam_2023/domain/services/download_service.dart';

import 'dart:collection';

import 'package:surf_flutter_study_jam_2023/domain/services/ticket_repository.dart';
import 'package:dino/dino.dart';

part 'ticket_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class TicketRepositoryImpl implements TicketRepository {
  TicketRepositoryImpl(this._downloadService, this._preferences) {
    _getPreviousDownloadFiles();
  }

  final DownloadService _downloadService;
  final SharedPreferences _preferences;

  Future<void> _getPreviousDownloadFiles() async {
    final uris = _preferences.getStringList('uris') ?? [];
    await Future.forEach(uris, (uri) async {
      final ticket = TicketModel(
        name: basename(uri),
        file: FileModel(
          downloadState: const DownloadFileState.queued(),
          path: await getLibraryDirectory(),
          uri: Uri.parse(uri),
        ),
      );

      return downloadTicket(ticket);
    });
  }

  Future<void> addUriToStorage(Uri uri) {
    final uris = _preferences.getStringList('uris') ?? [];
    return _preferences.setStringList('uris', [uri.toString(), ...uris]);
  }

  Future<void> removeUriToStorage(Uri uri) {
    final uris = _preferences.getStringList('uris') ?? [];
    uris.removeWhere((element) => element == uri.toString());
    return _preferences.setStringList('uris', uris);
  }

  @override
  Stream<UnmodifiableListView<TicketModel>> get ticketListStream {
    return _downloadService.downloadQueryStream.map((list) {
      return UnmodifiableListView(list.map((file) => TicketModel(file: file, name: basename('${file.uri}'))));
    });
  }

  @override
  Future<Either<Error, TicketModel>> downloadTicket(TicketModel ticket) async {
    try {
      await _downloadService.download(ticket.file);
      addUriToStorage(ticket.file.uri);

      return Right(ticket);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, UnmodifiableListView<TicketModel>>> deleteTickets(
    UnmodifiableListView<TicketModel> tickets,
  ) async {
    try {
      await Future.forEach(tickets, (element) async {
        await _downloadService.removeFromQueue(element.file);
        removeUriToStorage(element.file.uri);

        return File('${element.file.path.path}/${element.name}').delete();
      });

      return Right(tickets);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, UnmodifiableListView<TicketModel>>> pauseDownloadTickets(
    UnmodifiableListView<TicketModel> tickets,
  ) async {
    try {
      await Future.forEach(tickets, (element) {
        return _downloadService.pause(element.file);
      });

      return Right(tickets);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, UnmodifiableListView<TicketModel>>> resumeDownloadTickets(
    UnmodifiableListView<TicketModel> tickets,
  ) async {
    try {
      await Future.forEach(tickets, (element) {
        return _downloadService.resume(element.file);
      });

      return Right(tickets);
    } catch (_) {
      return Left(Error());
    }
  }
}
