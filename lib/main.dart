import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'features/game/data/hive_adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  registerHiveAdapters();
  await Hive.openBox<GameState>('game_box');

  runApp(
    const ProviderScope(
      child: YeraltiAzerbaycanApp(),
    ),
  );
}
