import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/presentation/pages/ticket_storage_page.dart';
import 'package:surf_flutter_study_jam_2023/presentation/styles/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Хранение билетов',
      theme: lightTheme,
      home: const TicketStoragePage(),
    );
  }
}
