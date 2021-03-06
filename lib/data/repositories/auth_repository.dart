import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/data/repositories/user_repository.dart';

class AuthRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  final repository = GetIt.instance<UserRepository>();

  Future<String> createAccount({required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await repository.makeUser(email);
      return 'Account created';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return 'Error occurred';
    }
    return 'Please enter email and password';
  }

  Future<String> signIn({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Welcome';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
    return 'Please enter email and password';
  }

  Future<String> resetPassword(String newPassword) async {
    try {
      await user!.updatePassword(newPassword);
      return 'Reset was successful';
    } catch (e) {
      return 'Error';
    }
  }

  Future<String> signOut() async {
    await auth.signOut();
    return 'singOut';
  }
}
