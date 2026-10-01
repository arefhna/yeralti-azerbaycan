import 'package:hive/hive.dart';

part 'tool_model.g.dart';

@HiveType(typeId: 3)
class ToolModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String emoji;

  @HiveField(3)
  bool owned;

  @HiveField(4)
  int level;

  @HiveField(5)
  double basePower; // klik başına zərbə

  @HiveField(6)
  double baseCost;

  /// Hansı qat/boss üçün bonus verir (boş = hamı üçün)
  @HiveField(7)
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

  /// Cari güc (hər level +20%)
  double get currentPower => basePower * (1 + 0.2 * level);

  /// Təkmilləşdirmə qiyməti
  double get upgradeCost => baseCost * _pow(1.5, level + 1);

  double _pow(double base, int exp) {
    double result = 1;
    for (int i = 0; i < exp; i++) {
      result *= base;
    }
    return result;
  }
}
