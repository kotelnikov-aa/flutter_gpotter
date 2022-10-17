// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_storage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KeyElixirAdapter extends TypeAdapter<KeyElixir> {
  @override
  final int typeId = 1;

  @override
  KeyElixir read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KeyElixir(
      urlElixir: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KeyElixir obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.urlElixir);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KeyElixirAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class KeyHouseAdapter extends TypeAdapter<KeyHouse> {
  @override
  final int typeId = 2;

  @override
  KeyHouse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KeyHouse(
      urlHouse: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KeyHouse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.urlHouse);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KeyHouseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class KeySpelAdapter extends TypeAdapter<KeySpel> {
  @override
  final int typeId = 3;

  @override
  KeySpel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KeySpel(
      urlSpel: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KeySpel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.urlSpel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KeySpelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class KeyWizardAdapter extends TypeAdapter<KeyWizard> {
  @override
  final int typeId = 4;

  @override
  KeyWizard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KeyWizard(
      urlWizard: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KeyWizard obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.urlWizard);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KeyWizardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
