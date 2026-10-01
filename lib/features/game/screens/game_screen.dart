import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('⛏️', style: TextStyle(fontSize: 64)),
              const SizedBox(height: 16),
              const Text('Yeraltı Azərbaycan', style: AppTextStyles.h1),
              const SizedBox(height: 8),
              Text(
                'Mərhələ 1 — Layihə hazırdır',
                style: AppTextStyles.body.copyWith(color: AppColors.accent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
