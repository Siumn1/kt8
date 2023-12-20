// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwtModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtModelImpl _$$JwtModelImplFromJson(Map<String, dynamic> json) =>
    _$JwtModelImpl(
      json['accessToken'] as String,
      json['refreshToken'] as String,
    );

Map<String, dynamic> _$$JwtModelImplToJson(_$JwtModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
