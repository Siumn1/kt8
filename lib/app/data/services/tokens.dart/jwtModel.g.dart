// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwtModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtTokenImpl _$$JwtTokenImplFromJson(Map<String, dynamic> json) =>
    _$JwtTokenImpl(
      json['accessToken'] as String,
      json['refreshToken'] as String,
    );

Map<String, dynamic> _$$JwtTokenImplToJson(_$JwtTokenImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
