import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwtModel.freezed.dart';
part 'jwtModel.g.dart';

@freezed
class JwtToken with _$JwtToken {
  factory JwtToken(
    String accessToken,
    String refreshToken,
  ) = _JwtToken;

  factory JwtToken.fromJson(Map<String, dynamic> json) =>
      _$JwtTokenFromJson(json);
}
