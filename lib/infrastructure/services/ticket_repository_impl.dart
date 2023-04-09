import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:path/path.dart';
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
      return UnmodifiableListView(list.map((file) => TicketModel(file: file, name: basename('${file.uri}'))));
    });
  }

  @override
  Future<Either<Error, TicketModel>> downloadTicket(TicketModel ticket) async {
    try {
      await _downloadService.download(ticket.file);
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
