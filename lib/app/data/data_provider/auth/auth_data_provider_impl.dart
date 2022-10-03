// import 'package:dartz/dartz.dart';

// import 'package:customer_app/core/models/user/user_model.dart';

// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
// import 'package:logger/logger.dart';

// import 'auth_data_provider.dart';
// import 'login_with_email_password_failures.dart';

// class AuthDataProviderImpl implements AuthDataProvider {
//   final firebase_auth.FirebaseAuth _firebaseAuth;
//   final CacheClient _cache;

//   static const userCacheKey = '__user_cache_key__';

//   AuthDataProviderImpl(
//       {required firebase_auth.FirebaseAuth firebaseAuth,
//       required CacheClient cache})
//       : _firebaseAuth = firebaseAuth,
//         _cache = cache;

//   @override
//   RvStream<User> get user {
//     //TODO check how to handle errors here

//     return _firebaseAuth.idTokenChanges().asyncMap(getUserFromFirebaseUser);
//   }

//   @override
//   RvStream<firebase_auth.User?> get firebaseUser =>
//       _firebaseAuth.authStateChanges();

//   @override
//   Rvf<User> getUserFromFirebaseUser(firebase_auth.User? firebaseUser) async {
//     try {
//       if (firebaseUser != null) {
//         final claims = (await userClaims);

//         if (claims != null && claims['role'] != null) {
//           //After getting the claims of the user we have to check what is the role of this user
//           final role = Role.values.byName(claims['role']);
//           final currentUser = firebaseUser.toUser.copyWith(role: role);

//           if (role == Role.customer) {
//             return currentUser;
//           } else if (role == Role.driver) {
//             //The driver cannot access the customer app
//             return User.empty;
//           } else if (role == Role.ccustomer) {
//             //We have to get the company id of the cooperate customer

//             if (claims['company_id'] != null) {
//               final companyID = claims['company_id'];
//               return currentUser.copyWith(companyID: companyID);
//             } else {
//               //if the company id is not available we can't allow the user to access the app
//               return User.empty;
//             }
//           } else {
//             return User.empty;
//           }
//         } else {
//           return User.empty;
//         }
//       } else {
//         return User.empty;
//       }
//     } on ArgumentError {
//       return User.empty;
//     } catch (e) {
//       return User.empty;
//     }
//   }

//   @override
//   Future<Map<String, dynamic>?> get userClaims async {
//     final user = _firebaseAuth.currentUser;

//     // If refresh is set to true, a refresh of the id token is forced.
//     final idTokenResult = await user?.getIdTokenResult();

//     return idTokenResult?.claims;
//   }

//   @override
//   User get currentUser {
//     return _cache.read<User>(key: userCacheKey) ?? User.empty;
//   }

//   @override
//   RvfUnit signInWithEmailAndPassword(
//       {required Email email, required Password password}) async {
//     try {
//       firebase_auth.UserCredential result =
//           await _firebaseAuth.signInWithEmailAndPassword(
//         email: email.value,
//         password: password.value,
//       );

//       if (result.user != null) {
//         firebase_auth.IdTokenResult idTokenResult =
//             await result.user!.getIdTokenResult();

//         Map<String, dynamic>? claims = idTokenResult.claims;

//         if (claims != null) {
//           final roleOfUser = Role.values.byName(claims['role']);

//           if (roleOfUser == Role.customer || roleOfUser == Role.ccustomer) {
//             return unit;
//           } else {
//             throw const LogInWithEmailAndPasswordFailure(
//                 "You are not allowed to login to Pinches Cab app with this email and password"); //TODO test if this is working as expected
//           }
//         } else {
//           throw const LogInWithEmailAndPasswordFailure();
//         }
//       } else {
//         throw const LogInWithEmailAndPasswordFailure();
//       }
//     } on firebase_auth.FirebaseAuthException catch (e) {
//       throw LogInWithEmailAndPasswordFailure.fromCode(e.code);
//     } on LogInWithEmailAndPasswordFailure catch (e) {
//       throw LogInWithEmailAndPasswordFailure(e.message);
//     } on ArgumentError catch (e) {
//       Logger().e(e.message);
//       //This error will be thrown if there is a issue with enum conversion in the Role of the user
//       throw const LogInWithEmailAndPasswordFailure();
//     } catch (_) {
//       throw const LogInWithEmailAndPasswordFailure();
//     }
//   }

//   @override
//   RvfUnit signOutUser() async {
//     try {
//       await Future.wait([
//         _firebaseAuth.signOut(),
//       ]);

//       return unit;
//     } catch (_) {
//       throw const Exceptions.signOutException(
//           ErrorMessages.signOutErrorMessage);
//     }
//   }

//   @override
//   RvfUnit refreshIdTokenOfTheUser() async {
//     try {
//       _firebaseAuth.currentUser!.getIdToken(true);
//       return unit;
//     } catch (e) {
//       Logger().i(e);
//       throw const Exceptions.dataSourceException(
//           ErrorMessages.unexpectedErrorMessage);
//     }
//   }
// }

// extension on firebase_auth.User {
//   User get toUser {
//     return User(
//       userID: uid,
//       email: email!,
//     );
//   }
// }
