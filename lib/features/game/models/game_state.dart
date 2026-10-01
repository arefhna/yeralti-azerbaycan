import 'resource_model.dart';
import 'layer_model.dart';
import 'worker_model.dart';
import 'tool_model.dart';

class GameState {
  int currentLayerIndex;
  double qazinti;
  double mifQirintisi;
  int prestigeCount;
  DateTime lastSaveTime;
  DateTime firstPlayTime;
  int totalClicks;
  List<ResourceModel> resources;
  List<LayerModel> layers;
  List<WorkerModel> workers;
  List<ToolModel> tools;
  List<String> unlockedAchievements;
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

  GameState copyWith({
    int? currentLayerIndex,
    double? qazinti,
    double? mifQirintisi,
    int? prestigeCount,
    DateTime? lastSaveTime,
    DateTime? firstPlayTime,
    int? totalClicks,
    List<ResourceModel>? resources,
    List<LayerModel>? layers,
    List<WorkerModel>? workers,
    List<ToolModel>? tools,
    List<String>? unlockedAchievements,
    List<String>? collectedArtifacts,
  }) {
    return GameState(
      currentLayerIndex: currentLayerIndex ?? this.currentLayerIndex,
      qazinti: qazinti ?? this.qazinti,
      mifQirintisi: mifQirintisi ?? this.mifQirintisi,
      prestigeCount: prestigeCount ?? this.prestigeCount,
      lastSaveTime: lastSaveTime ?? this.lastSaveTime,
      firstPlayTime: firstPlayTime ?? this.firstPlayTime,
      totalClicks: totalClicks ?? this.totalClicks,
      resources: resources ?? this.resources,
      layers: layers ?? this.layers,
      workers: workers ?? this.workers,
      tools: tools ?? this.tools,
      unlockedAchievements: unlockedAchievements ?? this.unlockedAchievements,
      collectedArtifacts: collectedArtifacts ?? this.collectedArtifacts,
    );
  }
}
