import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:surf_flutter_study_jam_2023/presentation/pages/ticket_storage_page.dart';
import 'package:surf_flutter_study_jam_2023/presentation/styles/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appName,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
      ],
      theme: theme,
      home: const TicketStoragePage(),
    );
  }
}
