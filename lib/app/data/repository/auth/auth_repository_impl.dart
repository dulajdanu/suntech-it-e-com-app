// import 'package:customer_app/app/data/data_provider/auth/auth_data_provider.dart';
// import 'package:customer_app/app/data/data_provider/auth/login_with_email_password_failures.dart';
// import 'package:customer_app/core/errors/exceptions/error_messages.dart';
// import 'package:customer_app/core/errors/exceptions/exceptions.dart';
// import 'package:customer_app/core/errors/failures/failure.dart';
// import 'package:customer_app/core/features/auth/form_models/form_models.dart';
// import 'package:customer_app/core/models/user/user_model.dart';
// import 'package:customer_app/core/type_defs/type_defs.dart';
// import 'package:dartz/dartz.dart';
// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

// import 'package:logger/logger.dart';

// import 'auth_repository.dart';

// class AuthRepositoryImpl extends AuthRepository {
//   final AuthDataProvider _authDataProvider;
//   AuthRepositoryImpl({required AuthDataProvider authDataProvider})
//       : _authDataProvider = authDataProvider;

//   @override
//   RvStream<User> get user => _authDataProvider
//       .user; //TODO if there was a error in the data provider what should be happen test this

//   @override
//   User get currentUser => _authDataProvider.currentUser;

//   @override
//   RvfEitherUnit signInWithEmailAndPassword(
//       {required Email email, required Password password}) async {
//     try {
//       await _authDataProvider.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return right(unit);
//     } on LogInWithEmailAndPasswordFailure catch (e) {
//       return left(AuthenticationFailure(e.message));
//     } catch (e) {
//       Logger().e(e.toString());
//       return left(const AuthenticationFailure(ErrorMessages.loginErrorMessage));
//     }
//   }

//   @override
//   RvfEitherUnit signOutUser() async {
//     try {
//       await _authDataProvider.signOutUser();
//       return right(unit);
//     } on SignOutException catch (e) {
//       return left(Failure.signOutFailure(e.message));
//     }
//   }

//   @override
//   Stream<firebase_auth.User?> get firebaseUser =>
//       _authDataProvider.firebaseUser;

//   @override
//   RvfEitherUnit refreshIdTokenOfTheUser() async {
//     try {
//       await _authDataProvider.refreshIdTokenOfTheUser();
//       return right(unit);
//     } on DataSourceException catch (e) {
//       return left(Failure.dataSourceFailure(e.message));
//     }
//   }
// }


//todo remove unwanted repositories
