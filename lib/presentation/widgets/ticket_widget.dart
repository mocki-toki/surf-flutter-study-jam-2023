import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/ticket_model.dart';
import 'package:open_filex/open_filex.dart';
import 'package:surf_flutter_study_jam_2023/presentation/viewmodel/ticket_storage/ticket_storage_viewmodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget(this.ticket, {super.key});

  final TicketModel ticket;

  @override
  Widget build(BuildContext context) {
    final isCompleted = ticket.file.downloadState.maybeMap(completed: (_) => true, orElse: () => false);

    final showProgress = ticket.file.downloadState.maybeMap(
      downloading: (_) => true,
      paused: (_) => true,
      orElse: () => false,
    );

    final progressValue = ticket.file.downloadState.maybeWhen(
      downloading: (value) => value,
      paused: (value) => value,
      orElse: () => null,
    );

    final stateDescription = ticket.file.downloadState.map(
      completed: (_) => AppLocalizations.of(context)!.downloaded,
      queued: (_) => AppLocalizations.of(context)!.queue,
      downloading: (_) => AppLocalizations.of(context)!.downloading,
      paused: (_) => AppLocalizations.of(context)!.pause,
      failure: (_) => AppLocalizations.of(context)!.failure,
    );

    final stateIcon = ticket.file.downloadState.map(
      completed: (_) => Icons.delete_outline,
      queued: (_) => Icons.play_arrow,
      downloading: (_) => Icons.pause,
      paused: (_) => Icons.play_arrow,
      failure: (_) => Icons.delete,
    );

    final stateAction = ticket.file.downloadState.map(
      completed: (_) => onDelete,
      queued: (_) => onResume,
      downloading: (_) => onPause,
      paused: (_) => onResume,
      failure: (_) => onDelete,
    );

    return InkWell(
      onTap: !isCompleted
          ? null
          : () {
              final uri = Uri.parse('${ticket.file.path.path}/${ticket.name}');
              OpenFilex.open(uri.toString());
            },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.airplane_ticket),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(ticket.name),
                          Text(stateDescription),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(stateIcon),
                      onPressed: () => stateAction(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (showProgress) LinearProgressIndicator(value: progressValue),
        ],
      ),
    );
  }

  Future<void> onPause(BuildContext context) {
    return context.read<TicketStorageViewModel>().pauseDownloadTickets([ticket]);
  }

  Future<void> onResume(BuildContext context) {
    return context.read<TicketStorageViewModel>().resumeDownloadTickets([ticket]);
  }

  Future<void> onDelete(BuildContext context) {
    return context.read<TicketStorageViewModel>().deleteTickets([ticket]);
  }
}
