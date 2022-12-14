// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordState {
  ///email of the user
  Email get email => throw _privateConstructorUsedError;

  ///Status of the input form
  FormzStatus get formStatus => throw _privateConstructorUsedError;

  ///The error message for invalid input
  String? get submissionFailureMessage => throw _privateConstructorUsedError;

  ///The response received from the server
  ResponseModel? get responseModel => throw _privateConstructorUsedError;

  ///The state received from the server after password reset initalization
  String? get stateReceived => throw _privateConstructorUsedError;

  ///The pin code entered by the user
  List<String> get pinNumbers => throw _privateConstructorUsedError;

  ///Time remaning to enter the pin
  int get timeRemaningToEnterPin => throw _privateConstructorUsedError;

  ///To check if the verification process is successful
  bool get isVerificationSuccessful => throw _privateConstructorUsedError;

  ///token received from the server after the verification process
  String get token => throw _privateConstructorUsedError;

  ///error message from the server after the verification process
  String get errorMessageFromVerification => throw _privateConstructorUsedError;

  ///new password of the user
  Password get newPassword => throw _privateConstructorUsedError;

  ///Status of the input form for new password
  FormzStatus get newPasswordFormStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      FormzStatus formStatus,
      String? submissionFailureMessage,
      ResponseModel? responseModel,
      String? stateReceived,
      List<String> pinNumbers,
      int timeRemaningToEnterPin,
      bool isVerificationSuccessful,
      String token,
      String errorMessageFromVerification,
      Password newPassword,
      FormzStatus newPasswordFormStatus});

  $ResponseModelCopyWith<$Res>? get responseModel;
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? formStatus = freezed,
    Object? submissionFailureMessage = freezed,
    Object? responseModel = freezed,
    Object? stateReceived = freezed,
    Object? pinNumbers = freezed,
    Object? timeRemaningToEnterPin = freezed,
    Object? isVerificationSuccessful = freezed,
    Object? token = freezed,
    Object? errorMessageFromVerification = freezed,
    Object? newPassword = freezed,
    Object? newPasswordFormStatus = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      formStatus: formStatus == freezed
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      submissionFailureMessage: submissionFailureMessage == freezed
          ? _value.submissionFailureMessage
          : submissionFailureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseModel: responseModel == freezed
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
      stateReceived: stateReceived == freezed
          ? _value.stateReceived
          : stateReceived // ignore: cast_nullable_to_non_nullable
              as String?,
      pinNumbers: pinNumbers == freezed
          ? _value.pinNumbers
          : pinNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeRemaningToEnterPin: timeRemaningToEnterPin == freezed
          ? _value.timeRemaningToEnterPin
          : timeRemaningToEnterPin // ignore: cast_nullable_to_non_nullable
              as int,
      isVerificationSuccessful: isVerificationSuccessful == freezed
          ? _value.isVerificationSuccessful
          : isVerificationSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessageFromVerification: errorMessageFromVerification == freezed
          ? _value.errorMessageFromVerification
          : errorMessageFromVerification // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPasswordFormStatus: newPasswordFormStatus == freezed
          ? _value.newPasswordFormStatus
          : newPasswordFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }

  @override
  $ResponseModelCopyWith<$Res>? get responseModel {
    if (_value.responseModel == null) {
      return null;
    }

    return $ResponseModelCopyWith<$Res>(_value.responseModel!, (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      FormzStatus formStatus,
      String? submissionFailureMessage,
      ResponseModel? responseModel,
      String? stateReceived,
      List<String> pinNumbers,
      int timeRemaningToEnterPin,
      bool isVerificationSuccessful,
      String token,
      String errorMessageFromVerification,
      Password newPassword,
      FormzStatus newPasswordFormStatus});

  @override
  $ResponseModelCopyWith<$Res>? get responseModel;
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ResetPasswordState));

  @override
  _$_ResetPasswordState get _value => super._value as _$_ResetPasswordState;

  @override
  $Res call({
    Object? email = freezed,
    Object? formStatus = freezed,
    Object? submissionFailureMessage = freezed,
    Object? responseModel = freezed,
    Object? stateReceived = freezed,
    Object? pinNumbers = freezed,
    Object? timeRemaningToEnterPin = freezed,
    Object? isVerificationSuccessful = freezed,
    Object? token = freezed,
    Object? errorMessageFromVerification = freezed,
    Object? newPassword = freezed,
    Object? newPasswordFormStatus = freezed,
  }) {
    return _then(_$_ResetPasswordState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      formStatus: formStatus == freezed
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      submissionFailureMessage: submissionFailureMessage == freezed
          ? _value.submissionFailureMessage
          : submissionFailureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseModel: responseModel == freezed
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as ResponseModel?,
      stateReceived: stateReceived == freezed
          ? _value.stateReceived
          : stateReceived // ignore: cast_nullable_to_non_nullable
              as String?,
      pinNumbers: pinNumbers == freezed
          ? _value._pinNumbers
          : pinNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeRemaningToEnterPin: timeRemaningToEnterPin == freezed
          ? _value.timeRemaningToEnterPin
          : timeRemaningToEnterPin // ignore: cast_nullable_to_non_nullable
              as int,
      isVerificationSuccessful: isVerificationSuccessful == freezed
          ? _value.isVerificationSuccessful
          : isVerificationSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessageFromVerification: errorMessageFromVerification == freezed
          ? _value.errorMessageFromVerification
          : errorMessageFromVerification // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPasswordFormStatus: newPasswordFormStatus == freezed
          ? _value.newPasswordFormStatus
          : newPasswordFormStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {this.email = const Email.pure(),
      this.formStatus = FormzStatus.pure,
      this.submissionFailureMessage,
      this.responseModel,
      this.stateReceived,
      final List<String> pinNumbers = const ["", "", "", ""],
      this.timeRemaningToEnterPin = 30,
      this.isVerificationSuccessful = false,
      this.token = "",
      this.errorMessageFromVerification = "",
      this.newPassword = const Password.pure(),
      this.newPasswordFormStatus = FormzStatus.pure})
      : _pinNumbers = pinNumbers;

  ///email of the user
  @override
  @JsonKey()
  final Email email;

  ///Status of the input form
  @override
  @JsonKey()
  final FormzStatus formStatus;

  ///The error message for invalid input
  @override
  final String? submissionFailureMessage;

  ///The response received from the server
  @override
  final ResponseModel? responseModel;

  ///The state received from the server after password reset initalization
  @override
  final String? stateReceived;

  ///The pin code entered by the user
  final List<String> _pinNumbers;

  ///The pin code entered by the user
  @override
  @JsonKey()
  List<String> get pinNumbers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pinNumbers);
  }

  ///Time remaning to enter the pin
  @override
  @JsonKey()
  final int timeRemaningToEnterPin;

  ///To check if the verification process is successful
  @override
  @JsonKey()
  final bool isVerificationSuccessful;

  ///token received from the server after the verification process
  @override
  @JsonKey()
  final String token;

  ///error message from the server after the verification process
  @override
  @JsonKey()
  final String errorMessageFromVerification;

  ///new password of the user
  @override
  @JsonKey()
  final Password newPassword;

  ///Status of the input form for new password
  @override
  @JsonKey()
  final FormzStatus newPasswordFormStatus;

  @override
  String toString() {
    return 'ResetPasswordState(email: $email, formStatus: $formStatus, submissionFailureMessage: $submissionFailureMessage, responseModel: $responseModel, stateReceived: $stateReceived, pinNumbers: $pinNumbers, timeRemaningToEnterPin: $timeRemaningToEnterPin, isVerificationSuccessful: $isVerificationSuccessful, token: $token, errorMessageFromVerification: $errorMessageFromVerification, newPassword: $newPassword, newPasswordFormStatus: $newPasswordFormStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.formStatus, formStatus) &&
            const DeepCollectionEquality().equals(
                other.submissionFailureMessage, submissionFailureMessage) &&
            const DeepCollectionEquality()
                .equals(other.responseModel, responseModel) &&
            const DeepCollectionEquality()
                .equals(other.stateReceived, stateReceived) &&
            const DeepCollectionEquality()
                .equals(other._pinNumbers, _pinNumbers) &&
            const DeepCollectionEquality()
                .equals(other.timeRemaningToEnterPin, timeRemaningToEnterPin) &&
            const DeepCollectionEquality().equals(
                other.isVerificationSuccessful, isVerificationSuccessful) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(
                other.errorMessageFromVerification,
                errorMessageFromVerification) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPasswordFormStatus, newPasswordFormStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(formStatus),
      const DeepCollectionEquality().hash(submissionFailureMessage),
      const DeepCollectionEquality().hash(responseModel),
      const DeepCollectionEquality().hash(stateReceived),
      const DeepCollectionEquality().hash(_pinNumbers),
      const DeepCollectionEquality().hash(timeRemaningToEnterPin),
      const DeepCollectionEquality().hash(isVerificationSuccessful),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(errorMessageFromVerification),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(newPasswordFormStatus));

  @JsonKey(ignore: true)
  @override
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {final Email email,
      final FormzStatus formStatus,
      final String? submissionFailureMessage,
      final ResponseModel? responseModel,
      final String? stateReceived,
      final List<String> pinNumbers,
      final int timeRemaningToEnterPin,
      final bool isVerificationSuccessful,
      final String token,
      final String errorMessageFromVerification,
      final Password newPassword,
      final FormzStatus newPasswordFormStatus}) = _$_ResetPasswordState;

  @override

  ///email of the user
  Email get email;
  @override

  ///Status of the input form
  FormzStatus get formStatus;
  @override

  ///The error message for invalid input
  String? get submissionFailureMessage;
  @override

  ///The response received from the server
  ResponseModel? get responseModel;
  @override

  ///The state received from the server after password reset initalization
  String? get stateReceived;
  @override

  ///The pin code entered by the user
  List<String> get pinNumbers;
  @override

  ///Time remaning to enter the pin
  int get timeRemaningToEnterPin;
  @override

  ///To check if the verification process is successful
  bool get isVerificationSuccessful;
  @override

  ///token received from the server after the verification process
  String get token;
  @override

  ///error message from the server after the verification process
  String get errorMessageFromVerification;
  @override

  ///new password of the user
  Password get newPassword;
  @override

  ///Status of the input form for new password
  FormzStatus get newPasswordFormStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
