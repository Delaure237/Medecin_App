
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled15/Models/user.dart';

class AuthService {
  // create a new obj based on FirebaseUser
  CurrentUser? _userFromFirebaseUser(User user) {
    return CurrentUser(uid: user.uid);
  }

//create an instance of firebase
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // auth change user stream
  Stream<CurrentUser?> get user {
    return _auth.authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!)!);
  }

//Sign In with email& password;

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Register with email and password
Future RegisterWithEmailAndPassword(String email,String password ) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch(e){
      print(e.toString());
      return null;
    }
}

// Sign Out
Future signOut()  async {
    try{
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }

  }
  // SignIn with google
}