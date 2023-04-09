import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/ticket_model.dart';

abstract class TicketRepository {
  Stream<UnmodifiableListView<TicketModel>> get ticketListStream;
  Future<Either<Error, UnmodifiableListView<TicketModel>>> downloadTickets(
    UnmodifiableListView<TicketModel> tickets,
  );
  Future<Either<Error, UnmodifiableListView<TicketModel>>> pauseDownloadTickets(
    UnmodifiableListView<TicketModel> tickets,
  );
  Future<Either<Error, UnmodifiableListView<TicketModel>>> deleteTickets(
    UnmodifiableListView<TicketModel> tickets,
  );
}
