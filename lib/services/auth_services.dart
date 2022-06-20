import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> get authStateChanges => _auth.idTokenChanges();

  Future<Object> login(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Logged In";
    } catch(e) {
      return e;
    }
  }

  Future<Object> signUp(String email, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) async {
        User? user = FirebaseAuth.instance.currentUser;


        await FirebaseFirestore.instance.collection("users").doc(user?.uid).set({
          'uid': user?.uid,
          'email': email,
          'password': password,
        });
      });
      return "Signed Up";
    } catch(e) {
      return e;
    }
  }
  // Future<Object> registration(String email, String password, String fname, String mname, String lname, String phone) async {
  //   try{
  //     await _auth.createUserProfile(fname: fname, mname: mname, lname: lname, phone: phone).then((value) async {
  //       User? user = FirebaseAuth.instance.currentUser;
  //
  //
  //       await FirebaseFirestore.instance.collection("users").doc(user?.uid).set({
  //         'uid': user?.uid,
  //         'fname': fname,
  //         'mname': mname,
  //         'lname': lname,
  //         'phone': phone,
  //       });
  //     });
  //     return "Continue";
  //   } catch(e) {
  //     return e;
  //   }
  // }
}