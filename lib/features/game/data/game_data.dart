import '../models/game_state.dart';
import '../models/layer_model.dart';
import '../models/resource_model.dart';
import '../models/tool_model.dart';
import '../models/worker_model.dart';

class GameData {
  GameData._();

  static List<LayerModel> initialLayers() => [ /* əvvəlki kimi */ ];
  static List<ResourceModel> initialResources() => [ /* əvvəlki kimi */ ];
  static List<WorkerModel> initialWorkers() => [ /* əvvəlki kimi */ ];
  static List<ToolModel> initialTools() => [ /* əvvəlki kimi */ ];

  /// Yeni oyun vəziyyəti
  static GameState newGame() {
    final now = DateTime.now();
    return GameState(
      lastSaveTime: now,
      firstPlayTime: now,
      resources: initialResources(),
      layers: initialLayers(),
      workers: initialWorkers(),
      tools: initialTools(),
    );
  }
}
