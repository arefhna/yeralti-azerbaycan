class GameConstants {
  GameConstants._();

  // Offline qazanc
  static const Duration maxOfflineDuration = Duration(hours: 24);
  static const double offlineEfficiency = 0.5; // 50% sürətlə

  // Avtomatik yaddaş
  static const Duration autoSaveInterval = Duration(seconds: 30);

  // Prestige
  static const int prestigeMinLayer = 5; // 5-ci qatdan sonra prestige açılır

  // Say sistemi
  static const List<String> suffixes = [
    '',
    'K',
    'M',
    'B',
    'T',
    'Qa',
    'Qi',
    'Sx',
    'Sp',
    'Ok',
    'No',
    'Dc',
  ];
}
