import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/ticket_model.dart';
import 'package:surf_flutter_study_jam_2023/domain/services/download_service.dart';

import 'dart:collection';

import 'package:surf_flutter_study_jam_2023/domain/services/ticket_repository.dart';
import 'package:dino/dino.dart';

part 'ticket_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class TicketRepositoryImpl implements TicketRepository {
  TicketRepositoryImpl(this._downloadService);

  final DownloadService _downloadService;

  @override
  Stream<UnmodifiableListView<TicketModel>> get ticketListStream {
    return _downloadService.downloadQueryStream.map((list) {
      return UnmodifiableListView(list.map((file) => TicketModel(file: file, name: '')));
    });
  }

  @override
  Future<Either<Error, UnmodifiableListView<TicketModel>>> downloadTickets(
    UnmodifiableListView<TicketModel> tickets,
  ) async {
    try {
      await Future.forEach(tickets, (element) {
        return _downloadService.download(element.file);
      });

      return Right(tickets);
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
        await _downloadService.pause(element.file);
        return File(element.file.path.path).delete();
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
}
