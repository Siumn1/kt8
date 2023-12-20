// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwtModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JwtToken _$JwtTokenFromJson(Map<String, dynamic> json) {
  return _JwtToken.fromJson(json);
}

/// @nodoc
mixin _$JwtToken {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtTokenCopyWith<JwtToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtTokenCopyWith<$Res> {
  factory $JwtTokenCopyWith(JwtToken value, $Res Function(JwtToken) then) =
      _$JwtTokenCopyWithImpl<$Res, JwtToken>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$JwtTokenCopyWithImpl<$Res, $Val extends JwtToken>
    implements $JwtTokenCopyWith<$Res> {
  _$JwtTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtTokenImplCopyWith<$Res>
    implements $JwtTokenCopyWith<$Res> {
  factory _$$JwtTokenImplCopyWith(
          _$JwtTokenImpl value, $Res Function(_$JwtTokenImpl) then) =
      __$$JwtTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$JwtTokenImplCopyWithImpl<$Res>
    extends _$JwtTokenCopyWithImpl<$Res, _$JwtTokenImpl>
    implements _$$JwtTokenImplCopyWith<$Res> {
  __$$JwtTokenImplCopyWithImpl(
      _$JwtTokenImpl _value, $Res Function(_$JwtTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$JwtTokenImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtTokenImpl implements _JwtToken {
  _$JwtTokenImpl(this.accessToken, this.refreshToken);

  factory _$JwtTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtTokenImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'JwtToken(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtTokenImplCopyWith<_$JwtTokenImpl> get copyWith =>
      __$$JwtTokenImplCopyWithImpl<_$JwtTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtTokenImplToJson(
      this,
    );
  }
}

abstract class _JwtToken implements JwtToken {
  factory _JwtToken(final String accessToken, final String refreshToken) =
      _$JwtTokenImpl;

  factory _JwtToken.fromJson(Map<String, dynamic> json) =
      _$JwtTokenImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JwtTokenImplCopyWith<_$JwtTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
