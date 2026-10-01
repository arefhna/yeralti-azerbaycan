class ResourceModel {
  String id;
  String name;
  String emoji;
  double amount;
  double totalMined;
  int layerIndex;

  ResourceModel({
    required this.id,
    required this.name,
    required this.emoji,
    this.amount = 0,
    this.totalMined = 0,
    required this.layerIndex,
  });

  ResourceModel copyWith({
    String? id,
    String? name,
    String? emoji,
    double? amount,
    double? totalMined,
    int? layerIndex,
  }) {
    return ResourceModel(
      id: id ?? this.id,
      name: name ?? this.name,
      emoji: emoji ?? this.emoji,
      amount: amount ?? this.amount,
      totalMined: totalMined ?? this.totalMined,
      layerIndex: layerIndex ?? this.layerIndex,
    );
  }
}
