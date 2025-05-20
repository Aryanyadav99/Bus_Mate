// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorDetails _$ErrorDetailsFromJson(Map<String, dynamic> json) {
  return _ErrorDetails.fromJson(json);
}

/// @nodoc
mixin _$ErrorDetails {
  int get errorCode => throw _privateConstructorUsedError;
  set errorCode(int value) => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  set errorMessage(String value) => throw _privateConstructorUsedError;
  String get devErrorMessage => throw _privateConstructorUsedError;
  set devErrorMessage(String value) => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  set timestamp(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<$Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails value, $Res Function(ErrorDetails) then) =
      _$ErrorDetailsCopyWithImpl<$Res, ErrorDetails>;
  @useResult
  $Res call(
      {int errorCode,
      String errorMessage,
      String devErrorMessage,
      int timestamp});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res, $Val extends ErrorDetails>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? devErrorMessage = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      devErrorMessage: null == devErrorMessage
          ? _value.devErrorMessage
          : devErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorDetailsCopyWith<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  factory _$$_ErrorDetailsCopyWith(
          _$_ErrorDetails value, $Res Function(_$_ErrorDetails) then) =
      __$$_ErrorDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int errorCode,
      String errorMessage,
      String devErrorMessage,
      int timestamp});
}

/// @nodoc
class __$$_ErrorDetailsCopyWithImpl<$Res>
    extends _$ErrorDetailsCopyWithImpl<$Res, _$_ErrorDetails>
    implements _$$_ErrorDetailsCopyWith<$Res> {
  __$$_ErrorDetailsCopyWithImpl(
      _$_ErrorDetails _value, $Res Function(_$_ErrorDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? devErrorMessage = null,
    Object? timestamp = null,
  }) {
    return _then(_$_ErrorDetails(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      devErrorMessage: null == devErrorMessage
          ? _value.devErrorMessage
          : devErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorDetails implements _ErrorDetails {
  _$_ErrorDetails(
      {required this.errorCode,
      required this.errorMessage,
      required this.devErrorMessage,
      required this.timestamp});

  factory _$_ErrorDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDetailsFromJson(json);

  @override
  int errorCode;
  @override
  String errorMessage;
  @override
  String devErrorMessage;
  @override
  int timestamp;

  @override
  String toString() {
    return 'ErrorDetails(errorCode: $errorCode, errorMessage: $errorMessage, devErrorMessage: $devErrorMessage, timestamp: $timestamp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorDetailsCopyWith<_$_ErrorDetails> get copyWith =>
      __$$_ErrorDetailsCopyWithImpl<_$_ErrorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDetailsToJson(
      this,
    );
  }
}

abstract class _ErrorDetails implements ErrorDetails {
  factory _ErrorDetails(
      {required int errorCode,
      required String errorMessage,
      required String devErrorMessage,
      required int timestamp}) = _$_ErrorDetails;

  factory _ErrorDetails.fromJson(Map<String, dynamic> json) =
      _$_ErrorDetails.fromJson;

  @override
  int get errorCode;
  set errorCode(int value);
  @override
  String get errorMessage;
  set errorMessage(String value);
  @override
  String get devErrorMessage;
  set devErrorMessage(String value);
  @override
  int get timestamp;
  set timestamp(int value);
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDetailsCopyWith<_$_ErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
