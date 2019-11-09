import 'package:base/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _user (FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_user);
        //.map((FirebaseUser user) => _user(user));
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

  Future signOut() async{
    try {
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

}