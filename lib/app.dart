import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/game/screens/game_screen.dart';

class YeraltiAzerbaycanApp extends StatelessWidget {
  const YeraltiAzerbaycanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yeraltı Azərbaycan',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const GameScreen(),
    );
  }
}
