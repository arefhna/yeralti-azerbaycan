class LayerModel {
  int index;
  String name;
  String emoji;
  bool unlocked;
  int bossHp;
  int bossMaxHp;
  bool bossDefeated;
  String bossEmoji;
  String bossName;
  String bossWeaknessToolId;

  LayerModel({
    required this.index,
    required this.name,
    required this.emoji,
    this.unlocked = false,
    this.bossHp = 1000,
    required this.bossMaxHp,
    this.bossDefeated = false,
    required this.bossEmoji,
    required this.bossName,
    required this.bossWeaknessToolId,
  });

  LayerModel copyWith({
    int? index,
    String? name,
    String? emoji,
    bool? unlocked,
    int? bossHp,
    int? bossMaxHp,
    bool? bossDefeated,
    String? bossEmoji,
    String? bossName,
    String? bossWeaknessToolId,
  }) {
    return LayerModel(
      index: index ?? this.index,
      name: name ?? this.name,
      emoji: emoji ?? this.emoji,
      unlocked: unlocked ?? this.unlocked,
      bossHp: bossHp ?? this.bossHp,
      bossMaxHp: bossMaxHp ?? this.bossMaxHp,
      bossDefeated: bossDefeated ?? this.bossDefeated,
      bossEmoji: bossEmoji ?? this.bossEmoji,
      bossName: bossName ?? this.bossName,
      bossWeaknessToolId: bossWeaknessToolId ?? this.bossWeaknessToolId,
    );
  }
}
