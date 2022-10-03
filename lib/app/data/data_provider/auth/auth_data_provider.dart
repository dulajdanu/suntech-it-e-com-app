// import 'package:customer_app/core/features/auth/form_models/form_models.dart';
// import 'package:customer_app/core/models/user/user_model.dart';
// import 'package:customer_app/core/type_defs/type_defs.dart';

// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

// abstract class AuthDataProvider {
//   RvStream<User> get user;

//   RvStream<firebase_auth.User?> get firebaseUser;

//   User get currentUser;

//   ///Signout method
//   RvfUnit signOutUser();

//   RvfUnit signInWithEmailAndPassword(
//       {required Email email, required Password password});

//   Future<Map<dynamic, dynamic>?> get userClaims;

//   Rvf<User> getUserFromFirebaseUser(firebase_auth.User firebaseUser);

//   /// Refresh id token of the user
//   RvfUnit refreshIdTokenOfTheUser();
// }
