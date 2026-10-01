import 'package:hive/hive.dart';

import '../models/resource_model.dart';
import '../models/layer_model.dart';
import '../models/worker_model.dart';
import '../models/tool_model.dart';
import '../models/game_state.dart';

// ============ RESOURCE ============
class ResourceModelAdapter extends TypeAdapter<ResourceModel> {
  @override
  final int typeId = 0;

  @override
  ResourceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResourceModel(
      id: fields[0] as String,
      name: fields[1] as String,
      emoji: fields[2] as String,
      amount: fields[3] as double,
      totalMined: fields[4] as double,
      layerIndex: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ResourceModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.emoji)
      ..writeByte(3)
      ..write(obj.amount)
      ..writeByte(4)
      ..write(obj.totalMined)
      ..writeByte(5)
      ..write(obj.layerIndex);
  }
}

// ============ LAYER ============
class LayerModelAdapter extends TypeAdapter<LayerModel> {
  @override
  final int typeId = 1;

  @override
  LayerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LayerModel(
      index: fields[0] as int,
      name: fields[1] as String,
      emoji: fields[2] as String,
      unlocked: fields[3] as bool,
      bossHp: fields[4] as int,
      bossMaxHp: fields[5] as int,
      bossDefeated: fields[6] as bool,
      bossEmoji: fields[7] as String,
      bossName: fields[8] as String,
      bossWeaknessToolId: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LayerModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.emoji)
      ..writeByte(3)
      ..write(obj.unlocked)
      ..writeByte(4)
      ..write(obj.bossHp)
      ..writeByte(5)
      ..write(obj.bossMaxHp)
      ..writeByte(6)
      ..write(obj.bossDefeated)
      ..writeByte(7)
      ..write(obj.bossEmoji)
      ..writeByte(8)
      ..write(obj.bossName)
      ..writeByte(9)
      ..write(obj.bossWeaknessToolId);
  }
}

// ============ WORKER ============
class WorkerModelAdapter extends TypeAdapter<WorkerModel> {
  @override
  final int typeId = 2;

  @override
  WorkerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkerModel(
      id: fields[0] as String,
      name: fields[1] as String,
      emoji: fields[2] as String,
      count: fields[3] as int,
      baseProduction: fields[4] as double,
      baseCost: fields[5] as double,
      layerIndex: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WorkerModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.emoji)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.baseProduction)
      ..writeByte(5)
      ..write(obj.baseCost)
      ..writeByte(6)
      ..write(obj.layerIndex);
  }
}

// ============ TOOL ============
class ToolModelAdapter extends TypeAdapter<ToolModel> {
  @override
  final int typeId = 3;

  @override
  ToolModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ToolModel(
      id: fields[0] as String,
      name: fields[1] as String,
      emoji: fields[2] as String,
      owned: fields[3] as bool,
      level: fields[4] as int,
      basePower: fields[5] as double,
      baseCost: fields[6] as double,
      specialForLayer: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ToolModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.emoji)
      ..writeByte(3)
      ..write(obj.owned)
      ..writeByte(4)
      ..write(obj.level)
      ..writeByte(5)
      ..write(obj.basePower)
      ..writeByte(6)
      ..write(obj.baseCost)
      ..writeByte(7)
      ..write(obj.specialForLayer);
  }
}

// ============ GAME STATE ============
class GameStateAdapter extends TypeAdapter<GameState> {
  @override
  final int typeId = 4;

  @override
  GameState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameState(
      currentLayerIndex: fields[0] as int,
      qazinti: fields[1] as double,
      mifQirintisi: fields[2] as double,
      prestigeCount: fields[3] as int,
      lastSaveTime: fields[4] as DateTime,
      firstPlayTime: fields[5] as DateTime,
      totalClicks: fields[6] as int,
      resources: (fields[7] as List).cast<ResourceModel>(),
      layers: (fields[8] as List).cast<LayerModel>(),
      workers: (fields[9] as List).cast<WorkerModel>(),
      tools: (fields[10] as List).cast<ToolModel>(),
      unlockedAchievements: (fields[11] as List).cast<String>(),
      collectedArtifacts: (fields[12] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, GameState obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.currentLayerIndex)
      ..writeByte(1)
      ..write(obj.qazinti)
      ..writeByte(2)
      ..write(obj.mifQirintisi)
      ..writeByte(3)
      ..write(obj.prestigeCount)
      ..writeByte(4)
      ..write(obj.lastSaveTime)
      ..writeByte(5)
      ..write(obj.firstPlayTime)
      ..writeByte(6)
      ..write(obj.totalClicks)
      ..writeByte(7)
      ..write(obj.resources)
      ..writeByte(8)
      ..write(obj.layers)
      ..writeByte(9)
      ..write(obj.workers)
      ..writeByte(10)
      ..write(obj.tools)
      ..writeByte(11)
      ..write(obj.unlockedAchievements)
      ..writeByte(12)
      ..write(obj.collectedArtifacts);
  }
}

/// Bütün adapter-ləri qeydiyyatdan keçir
void registerHiveAdapters() {
  Hive.registerAdapter(ResourceModelAdapter());
  Hive.registerAdapter(LayerModelAdapter());
  Hive.registerAdapter(WorkerModelAdapter());
  Hive.registerAdapter(ToolModelAdapter());
  Hive.registerAdapter(GameStateAdapter());
}
