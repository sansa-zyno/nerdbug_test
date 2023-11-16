import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signInEmailAndPass(String email, String password) async {
    bool res;
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = authResult.user;
      if (firebaseUser != null) {
        res = true;
      } else {
        res = false;
      }
    } on FirebaseAuthException catch (_) {
      res = false;
    }
    return res;
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
