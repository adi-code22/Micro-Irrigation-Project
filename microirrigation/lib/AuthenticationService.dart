import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth firebaseAuth;

  AuthenticationService(this.firebaseAuth);

  Stream<User> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String> signOut() async {
    try {
      await firebaseAuth.signOut();
      return "Signed out";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signIn({String email, String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp(
      {String email, String password, String accesscode}) async {
    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection("accesscode")
          .doc("code")
          .get();

      String _access_code = documentSnapshot.data()['access'];

      if (_access_code == accesscode) {
        await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);

        return "Signed up";
      } else {
        return "Wrong code";
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
