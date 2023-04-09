import 'package:dino_flutter/dino_flutter.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/presentation/application.dart';
import 'package:dino/dino.dart';

Future<void> main() async {
  final services = ServiceCollection();

  final scope = services.buildRootScope();
  await scope.initialize();

  runApp(
    DinoProvider(
      serviceProvider: scope.serviceProvider,
      child: const Application(),
    ),
  );
}
