import 'package:base/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _user (FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // SignIn Anon
  Future signAnon () async {
    try {
     AuthResult anon =  await _auth.signInAnonymously();
     FirebaseUser user = anon.user;
     return _user(user);
    }
    catch (e){
      print(e.toString());
      return null;
    }
  }
}