import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/services.dart';

class AddTicketDialog extends StatefulWidget {
  const AddTicketDialog({super.key});

  static Future<Uri?> showDialog(BuildContext context) {
    return showModalBottomSheet<Uri?>(
      context: context,
      builder: (_) {
        return const AddTicketDialog();
      },
    );
  }

  @override
  State<AddTicketDialog> createState() => _AddTicketDialogState();
}

class _AddTicketDialogState extends State<AddTicketDialog> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  var _uri = Uri();

  @override
  void initState() {
    super.initState();

    getUriFromClipboard();
  }

  Future<void> getUriFromClipboard() async {
    final text = (await Clipboard.getData(Clipboard.kTextPlain))?.text;

    if (text != null && isValidPdfLink(text)) {
      _textController.text = text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.addTicket,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  controller: _textController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return AppLocalizations.of(context)!.pleaseEnterText;
                    if (!isValidPdfLink(value)) return AppLocalizations.of(context)!.invalidFormat;

                    setState(() => _uri = Uri.parse(value));
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: AppLocalizations.of(context)!.enterLinkToPdfFile,
                  ),
                ),
              ),
              FilledButton.icon(
                onPressed: onDownload,
                icon: const Icon(Icons.download_outlined),
                label: Text(AppLocalizations.of(context)!.download),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onDownload() async {
    if (!_formKey.currentState!.validate()) return;
    return Navigator.pop(context, _uri);
  }

  bool isValidPdfLink(String input) {
    return RegExp(
            r'^http(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\/\\\+&amp;%\$#_]*)?(.pdf)$')
        .hasMatch(input);
  }
}
