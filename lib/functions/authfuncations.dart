import 'package:firebase_auth/firebase_auth.dart';

Signup(String email, password) async {

    // print('/////////////////////////success///////////////////');
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    print('/////////////////////////success///////////////////');
  }    
  
  on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
