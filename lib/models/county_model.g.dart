// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'county_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountyAdapter extends TypeAdapter<County> {
  @override
  final int typeId = 0;

  @override
  County read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return County(
      name: fields[0] as String,
      code: fields[1] as String,
      flagUrl: fields[2] as String,
      governor: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, County obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.flagUrl)
      ..writeByte(3)
      ..write(obj.governor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
