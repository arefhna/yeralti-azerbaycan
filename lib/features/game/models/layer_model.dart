import 'package:hive/hive.dart';

part 'layer_model.g.dart';

@HiveType(typeId: 1)
class LayerModel extends HiveObject {
  @HiveField(0)
  int index;

  @HiveField(1)
  String name;

  @HiveField(2)
  String emoji;

  @HiveField(3)
  bool unlocked;

  @HiveField(4)
  int bossHp;

  @HiveField(5)
  int bossMaxHp;

  @HiveField(6)
  bool bossDefeated;

  @HiveField(7)
  String bossEmoji;

  @HiveField(8)
  String bossName;

  /// Boss üçün lazım olan alət id-si (məsələn, 'silver_pickaxe')
  @HiveField(9)
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
}
