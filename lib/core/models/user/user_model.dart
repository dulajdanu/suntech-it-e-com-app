import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed

///This user model will contain  information about the [`current user`]
///

class User with _$User {
  const factory User({
    ///email of the user
    required String email,

    ///full name of the user

    required String fullName,
  }) = _User;
  const User._();

  static const empty = User(
    email: "",
    fullName: "",
  );

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;
}
