class ToolModel {
  String id;
  String name;
  String emoji;
  bool owned;
  int level;
  double basePower;
  double baseCost;
  String? specialForLayer;

  ToolModel({
    required this.id,
    required this.name,
    required this.emoji,
    this.owned = false,
    this.level = 0,
    required this.basePower,
    required this.baseCost,
    this.specialForLayer,
  });

  double get currentPower => basePower * (1 + 0.2 * level);
  double get upgradeCost => baseCost * _pow(1.5, level + 1);

  ToolModel copyWith({
    String? id,
    String? name,
    String? emoji,
    bool? owned,
    int? level,
    double? basePower,
    double? baseCost,
    String? specialForLayer,
  }) {
    return ToolModel(
      id: id ?? this.id,
      name: name ?? this.name,
      emoji: emoji ?? this.emoji,
      owned: owned ?? this.owned,
      level: level ?? this.level,
      basePower: basePower ?? this.basePower,
      baseCost: baseCost ?? this.baseCost,
      specialForLayer: specialForLayer ?? this.specialForLayer,
    );
  }

  double _pow(double base, int exp) {
    double result = 1;
    for (int i = 0; i < exp; i++) {
      result *= base;
    }
    return result;
  }
}
