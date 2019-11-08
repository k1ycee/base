import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // SignIn Anon
  Future signAnon () async {
    try {
     AuthResult anon =  await _auth.signInAnonymously();
     FirebaseUser user = anon.user;
     return user;
    }
    catch (e){
      print(e.toString());
      return null;
    }
  }
}