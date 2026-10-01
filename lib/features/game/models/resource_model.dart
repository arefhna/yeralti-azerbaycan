import 'package:hive/hive.dart';

part 'resource_model.g.dart';

@HiveType(typeId: 0)
class ResourceModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String emoji;

  @HiveField(3)
  double amount;

  @HiveField(4)
  double totalMined;

  @HiveField(5)
  int layerIndex;

  ResourceModel({
    required this.id,
    required this.name,
    required this.emoji,
    this.amount = 0,
    this.totalMined = 0,
    required this.layerIndex,
  });
}
