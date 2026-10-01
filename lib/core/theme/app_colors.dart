import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Əsas
  static const Color background = Color(0xFF0D0B1F);
  static const Color surface = Color(0xFF1A1730);
  static const Color surfaceLight = Color(0xFF252041);
  
  // Vurğu
  static const Color primary = Color(0xFFFFC857);
  static const Color secondary = Color(0xFF6C5CE7);
  static const Color accent = Color(0xFF00D9A3);
  
  // Mətn
  static const Color textPrimary = Color(0xFFF5F3FF);
  static const Color textSecondary = Color(0xFFB8B0D9);
  static const Color textMuted = Color(0xFF6E6689);
  
  // Status
  static const Color success = Color(0xFF00D9A3);
  static const Color warning = Color(0xFFFFA94D);
  static const Color danger = Color(0xFFFF5C5C);
  
  // Qat rəngləri (8 qat)
  static const List<Color> layerColors = [
    Color(0xFF8B6F47), // 1. Torpaq
    Color(0xFF6E7B8B), // 2. Daş
    Color(0xFF3A3A3A), // 3. Kömür
    Color(0xFF9B7EBD), // 4. Dədə Qorqud
    Color(0xFFC0392B), // 5. Div
    Color(0xFFE74C3C), // 6. Əjdaha
    Color(0xFF3498DB), // 7. Simurq
    Color(0xFFFFC857), // 8. Mif Dərini
  ];
}
