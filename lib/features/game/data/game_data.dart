import '../models/layer_model.dart';
import '../models/resource_model.dart';
import '../models/tool_model.dart';
import '../models/worker_model.dart';

class GameData {
  GameData._();

  /// 8 qat
  static List<LayerModel> initialLayers() => [
        LayerModel(
          index: 0,
          name: 'Torpaq',
          emoji: '🟫',
          unlocked: true,
          bossMaxHp: 0,
          bossEmoji: '',
          bossName: '',
          bossWeaknessToolId: '',
        ),
        LayerModel(
          index: 1,
          name: 'Daş',
          emoji: '🪨',
          bossMaxHp: 500,
          bossEmoji: '🗿',
          bossName: 'Daş Golem',
          bossWeaknessToolId: 'iron_pickaxe',
        ),
        LayerModel(
          index: 2,
          name: 'Kömür',
          emoji: '⬛',
          bossMaxHp: 2500,
          bossEmoji: '🔥',
          bossName: 'Od Ruhu',
          bossWeaknessToolId: 'iron_pickaxe',
        ),
        LayerModel(
          index: 3,
          name: 'Dədə Qorqud',
          emoji: '📜',
          bossMaxHp: 10000,
          bossEmoji: '🎻',
          bossName: 'Ozan Kölgəsi',
          bossWeaknessToolId: 'silver_pickaxe',
        ),
        LayerModel(
          index: 4,
          name: 'Div',
          emoji: '👹',
          bossMaxHp: 50000,
          bossEmoji: '👺',
          bossName: 'Div Başçısı',
          bossWeaknessToolId: 'silver_pickaxe',
        ),
        LayerModel(
          index: 5,
          name: 'Əjdaha',
          emoji: '🐉',
          bossMaxHp: 250000,
          bossEmoji: '🐲',
          bossName: 'Əjdaha',
          bossWeaknessToolId: 'ice_pickaxe',
        ),
        LayerModel(
          index: 6,
          name: 'Simurq',
          emoji: '🦅',
          bossMaxHp: 1000000,
          bossEmoji: '✨',
          bossName: 'Simurq Kölgəsi',
          bossWeaknessToolId: 'mythic_pickaxe',
        ),
        LayerModel(
          index: 7,
          name: 'Mif Dərini',
          emoji: '💎',
          bossMaxHp: 5000000,
          bossEmoji: '🌟',
          bossName: 'Yeraltı Xəzinə',
          bossWeaknessToolId: 'mythic_pickaxe',
        ),
      ];

  /// Resurslar (hər qat üçün 1-3)
  static List<ResourceModel> initialResources() => [
        ResourceModel(id: 'gil', name: 'Gil', emoji: '🟤', layerIndex: 0),
        ResourceModel(id: 'das', name: 'Daş', emoji: '🪨', layerIndex: 0),
        ResourceModel(id: 'komur', name: 'Kömür', emoji: '⚫', layerIndex: 0),
        ResourceModel(id: 'demir', name: 'Dəmir', emoji: '⚙️', layerIndex: 1),
        ResourceModel(id: 'mis', name: 'Mis', emoji: '🟠', layerIndex: 1),
        ResourceModel(id: 'kristal', name: 'Kristal', emoji: '🔷', layerIndex: 1),
        ResourceModel(id: 'qrafit', name: 'Qrafit', emoji: '⬛', layerIndex: 2),
        ResourceModel(id: 'kukurud', name: 'Kükürd', emoji: '🟡', layerIndex: 2),
        ResourceModel(id: 'gumus', name: 'Gümüş', emoji: '⚪', layerIndex: 3),
        ResourceModel(id: 'qizil', name: 'Qızıl', emoji: '🟡', layerIndex: 4),
        ResourceModel(id: 'almaz', name: 'Almaz', emoji: '💎', layerIndex: 5),
        ResourceModel(id: 'ulduz_tozu', name: 'Ulduz Tozu', emoji: '⭐', layerIndex: 6),
        ResourceModel(id: 'isik_kristali', name: 'İşıq Kristalı', emoji: '💠', layerIndex: 6),
      ];

  /// İşçilər
  static List<WorkerModel> initialWorkers() => [
        WorkerModel(id: 'cuce', name: 'Cücə Qazıcı', emoji: '🧒', baseProduction: 0.5, baseCost: 10, layerIndex: 0),
        WorkerModel(id: 'golem', name: 'Daş Golem', emoji: '🗿', baseProduction: 5, baseCost: 100, layerIndex: 1),
        WorkerModel(id: 'od_ruhu', name: 'Od Ruhu', emoji: '🔥', baseProduction: 50, baseCost: 1500, layerIndex: 2),
        WorkerModel(id: 'ozan', name: 'Ozan Kölgəsi', emoji: '🎻', baseProduction: 500, baseCost: 20000, layerIndex: 3),
        WorkerModel(id: 'div', name: 'Div Köməkçi', emoji: '👹', baseProduction: 5000, baseCost: 250000, layerIndex: 4),
        WorkerModel(id: 'ejdaha', name: 'Əjdaha Nəfəsi', emoji: '🐉', baseProduction: 50000, baseCost: 3000000, layerIndex: 5),
        WorkerModel(id: 'simurq', name: 'Simurq Kölgəsi', emoji: '🦅', baseProduction: 500000, baseCost: 40000000, layerIndex: 6),
      ];

  /// Alətlər
  static List<ToolModel> initialTools() => [
        ToolModel(id: 'basic_pickaxe', name: 'Sadə Qazma', emoji: '⛏️', owned: true, basePower: 1, baseCost: 0),
        ToolModel(id: 'iron_pickaxe', name: 'Dəmir Qazma', emoji: '🔨', basePower: 10, baseCost: 100, specialForLayer: '1'),
        ToolModel(id: 'silver_pickaxe', name: 'Gümüş Qazma', emoji: '🥈', basePower: 100, baseCost: 5000, specialForLayer: '3'),
        ToolModel(id: 'ice_pickaxe', name: 'Buz Qazma', emoji: '❄️', basePower: 1000, baseCost: 100000, specialForLayer: '5'),
        ToolModel(id: 'mythic_pickaxe', name: 'Mif Qazma', emoji: '✨', basePower: 10000, baseCost: 5000000, specialForLayer: '6'),
      ];

  /// İlkin oyun vəziyyəti
  static GameStateMap initialGameState() {
    final now = DateTime.now();
    return GameStateMap(
      lastSaveTime: now,
      firstPlayTime: now,
    );
  }
}

/// Köməkçi sinif (GameState qurmaq üçün)
class GameStateMap {
  final DateTime lastSaveTime;
  final DateTime firstPlayTime;

  GameStateMap({required this.lastSaveTime, required this.firstPlayTime});
}
