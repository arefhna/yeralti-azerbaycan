class WorkerModel {
  String id;
  String name;
  String emoji;
  int count;
  double baseProduction;
  double baseCost;
  int layerIndex;

  WorkerModel({
    required this.id,
    required this.name,
    required this.emoji,
    this.count = 0,
    required this.baseProduction,
    required this.baseCost,
    required this.layerIndex,
  });

  double get nextCost => baseCost * _pow(1.15, count);
  double get totalProduction => baseProduction * count;

  WorkerModel copyWith({
    String? id,
    String? name,
    String? emoji,
    int? count,
    double? baseProduction,
    double? baseCost,
    int? layerIndex,
  }) {
    return WorkerModel(
      id: id ?? this.id,
      name: name ?? this.name,
      emoji: emoji ?? this.emoji,
      count: count ?? this.count,
      baseProduction: baseProduction ?? this.baseProduction,
      baseCost: baseCost ?? this.baseCost,
      layerIndex: layerIndex ?? this.layerIndex,
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
