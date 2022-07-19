// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto.dart;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDTOAdapter extends TypeAdapter<_$_UserDTO> {
  @override
  final int typeId = 1;

  @override
  _$_UserDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserDTO(
      id: fields[1] as String?,
      token: fields[2] as String?,
      firstName: fields[3] as String?,
      lastName: fields[4] as String?,
      fullName: fields[5] as String?,
      isPrivate: fields[6] as bool?,
      email: fields[7] as String?,
      phone: fields[8] as String?,
      password: fields[9] as String?,
      oldPassword: fields[10] as String?,
      confirmation: fields[11] as String?,
      countryName: fields[12] as String?,
      platform: fields[13] as String?,
      avatar: fields[14] as String?,
      favAthlete: fields[15] as bool?,
      favPlace: fields[16] as bool?,
      locality: fields[17] as bool?,
      forceUpdate: fields[18] as bool?,
      active: fields[19] as bool?,
      accountVerified: fields[20] as bool?,
      provider: fields[21] as AuthProvider?,
      createdBy: fields[22] as DateTime?,
      updatedBy: fields[23] as DateTime?,
      deletedBy: fields[24] as DateTime?,
      createdAt: fields[25] as DateTime?,
      updatedAt: fields[26] as DateTime?,
      deletedAt: fields[27] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserDTO obj) {
    writer
      ..writeByte(27)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.token)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.lastName)
      ..writeByte(5)
      ..write(obj.fullName)
      ..writeByte(6)
      ..write(obj.isPrivate)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(8)
      ..write(obj.phone)
      ..writeByte(9)
      ..write(obj.password)
      ..writeByte(10)
      ..write(obj.oldPassword)
      ..writeByte(11)
      ..write(obj.confirmation)
      ..writeByte(12)
      ..write(obj.countryName)
      ..writeByte(13)
      ..write(obj.platform)
      ..writeByte(14)
      ..write(obj.avatar)
      ..writeByte(15)
      ..write(obj.favAthlete)
      ..writeByte(16)
      ..write(obj.favPlace)
      ..writeByte(17)
      ..write(obj.locality)
      ..writeByte(18)
      ..write(obj.forceUpdate)
      ..writeByte(19)
      ..write(obj.active)
      ..writeByte(20)
      ..write(obj.accountVerified)
      ..writeByte(21)
      ..write(obj.provider)
      ..writeByte(22)
      ..write(obj.createdBy)
      ..writeByte(23)
      ..write(obj.updatedBy)
      ..writeByte(24)
      ..write(obj.deletedBy)
      ..writeByte(25)
      ..write(obj.createdAt)
      ..writeByte(26)
      ..write(obj.updatedAt)
      ..writeByte(27)
      ..write(obj.deletedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
