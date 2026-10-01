import 'package:hive/hive.dart';

import 'resource_model.dart';
import 'layer_model.dart';
import 'worker_model.dart';
import 'tool_model.dart';

part 'game_state.g.dart';

@HiveType(typeId: 4)
class GameState extends HiveObject {
  @HiveField(0)
  int currentLayerIndex;

  @HiveField(1)
  double qazinti; // əsas valyuta

  @HiveField(2)
  double mifQirintisi; // prestige valyutası

  @HiveField(3)
  int prestigeCount;

  @HiveField(4)
  DateTime lastSaveTime;

  @HiveField(5)
  DateTime firstPlayTime;

  @HiveField(6)
  int totalClicks;

  @HiveField(7)
  List<ResourceModel> resources;

  @HiveField(8)
  List<LayerModel> layers;

  @HiveField(9)
  List<WorkerModel> workers;

  @HiveField(10)
  List<ToolModel> tools;

  @HiveField(11)
  List<String> unlockedAchievements;

  @HiveField(12)
  List<String> collectedArtifacts;

  GameState({
    this.currentLayerIndex = 0,
    this.qazinti = 0,
    this.mifQirintisi = 0,
    this.prestigeCount = 0,
    required this.lastSaveTime,
    required this.firstPlayTime,
    this.totalClicks = 0,
    required this.resources,
    required this.layers,
    required this.workers,
    required this.tools,
    this.unlockedAchievements = const [],
    this.collectedArtifacts = const [],
  });
}
