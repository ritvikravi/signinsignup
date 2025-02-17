import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart'; // Ensure this is also imported for Colors


class AuthService {

  Future<void> signup({
    required String email,
    required String password,
  }) async {
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch(e)  {
      String message = '';
      if(e.code == 'weak-password'){
        message = 'The password provided is too weak';
      }else if(e.code == 'email-already-in-use'){
        message = "An account with that email already exists";
      }

      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch(e)  {
      String message = '';
      if(e.code == 'user-not-found'){
        message = 'No user found for that email';
      }else if(e.code == 'wrong-password'){
        message = "Wrong password provided for that user";
      }

      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}