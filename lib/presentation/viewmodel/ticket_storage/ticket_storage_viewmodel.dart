import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/file_model.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/ticket_model.dart';
import 'package:surf_flutter_study_jam_2023/domain/services/ticket_repository.dart';
import 'package:surf_flutter_study_jam_2023/presentation/viewmodel/ticket_storage/ticket_storage_state.dart';

class TicketStorageViewModel extends Cubit<TicketStorageState> {
  TicketStorageViewModel(this._ticketRepository) : super(const TicketStorageState.empty()) {
    _ticketRepository.ticketListStream.listen((event) {
      if (event.isEmpty) emit(const TicketStorageState.empty());
      emit(TicketStorageState.loaded(items: event));
    });
  }

  final TicketRepository _ticketRepository;

  Future<void> downloadTicket(Uri uri) async {
    final ticket = TicketModel(
      name: basename(uri.path),
      file: FileModel(
        downloadState: const DownloadFileState.queued(),
        path: await getLibraryDirectory(),
        uri: uri,
      ),
    );

    await _ticketRepository.downloadTicket(ticket);
  }

  Future<void> pauseDownloadTickets(Iterable<TicketModel> tickets) async {
    await _ticketRepository.pauseDownloadTickets(UnmodifiableListView(tickets));
  }

  Future<void> resumeDownloadTickets(Iterable<TicketModel> tickets) async {
    await _ticketRepository.resumeDownloadTickets(UnmodifiableListView(tickets));
  }

  Future<void> deleteTickets(Iterable<TicketModel> tickets) async {
    await _ticketRepository.deleteTickets(UnmodifiableListView(tickets));
  }
}
