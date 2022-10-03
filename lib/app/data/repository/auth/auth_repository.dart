// import 'package:customer_app/core/features/auth/form_models/form_models.dart';
// import 'package:customer_app/core/models/user/user_model.dart';
// import 'package:customer_app/core/type_defs/type_defs.dart';
// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

// abstract class AuthRepository {
//   ///This will return the current user as a stream
//   RvStream<User> get user;

//   ///This will return the current Firebase User as a stream
//   Stream<firebase_auth.User?> get firebaseUser;

//   ///This will return the current user
//   User get currentUser;

//   ///Signout method
//   RvfEitherUnit signOutUser();

//   ///Sign in method
//   RvfEitherUnit signInWithEmailAndPassword(
//       {required Email email, required Password password});

//   RvfEitherUnit refreshIdTokenOfTheUser();

//   //TODO add signup here
// }
