import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwtModel.freezed.dart';
part 'jwtModel.g.dart';

@freezed
class JwtModel with _$JwtModel {
  factory JwtModel(
    String accessToken,
    String refreshToken,
  ) = _JwtModel;

  factory JwtModel.fromJson(Map<String, dynamic> json) =>
      _$JwtModelFromJson(json);
}
