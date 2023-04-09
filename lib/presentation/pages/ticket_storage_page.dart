import 'package:dino_flutter/dino_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/presentation/viewmodel/ticket_storage/ticket_storage_state.dart';
import 'package:surf_flutter_study_jam_2023/presentation/viewmodel/ticket_storage/ticket_storage_viewmodel.dart';
import 'package:dino/dino.dart';
import 'package:surf_flutter_study_jam_2023/presentation/widgets/add_ticket_dialog.dart';
import 'package:surf_flutter_study_jam_2023/presentation/widgets/ticket_widget.dart';

class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TicketStorageViewModel(context.sp.getRequired()),
      child: const _PageBody(),
    );
  }
}

class _PageBody extends StatelessWidget {
  const _PageBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketStorageViewModel, TicketStorageState>(
      builder: (_, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appName),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => onAdd(context),
          ),
          body: state.when(
            empty: () => const _PageBodyReasonMessage(_PageBodyReason.empty),
            loading: () => const _PageBodyReasonMessage(_PageBodyReason.loading),
            failure: () => const _PageBodyReasonMessage(_PageBodyReason.failure),
            loaded: (items) => ListView.builder(
              itemBuilder: (_, index) => TicketWidget(items[index]),
              itemCount: items.length,
            ),
          ),
        );
      },
    );
  }

  Future<void> onAdd(BuildContext context) async {
    final uri = await AddTicketDialog.showDialog(context);
    if (uri == null) return;

    if (context.mounted) {
      return context.read<TicketStorageViewModel>().downloadTicket(uri);
    }
  }
}

class _PageBodyReasonMessage extends StatelessWidget {
  const _PageBodyReasonMessage(this.reason);

  final _PageBodyReason reason;

  @override
  Widget build(BuildContext context) {
    Widget widget;

    switch (reason) {
      case _PageBodyReason.empty:
        widget = Text(AppLocalizations.of(context)!.ticketStorageEmpty);
        break;
      case _PageBodyReason.loading:
        widget = Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 30),
            Text(AppLocalizations.of(context)!.ticketStorageLoading),
          ],
        );
        break;
      case _PageBodyReason.failure:
        widget = Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 50),
            const SizedBox(height: 30),
            Text(AppLocalizations.of(context)!.ticketStorageFailure),
          ],
        );
        break;
    }

    return Center(child: widget);
  }
}

enum _PageBodyReason {
  empty,
  loading,
  failure,
}
