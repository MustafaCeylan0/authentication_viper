import 'package:firebase_auth/firebase_auth.dart';
import 'package:authentication_viper/entity.dart' as entity;
import 'package:flutter/cupertino.dart';

class LoginInteractor {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();

  final _auth = FirebaseAuth.instance;
  Future<bool> LogInUser(entity.User userData) async {
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: userData.mail, password: userData.password);
      if (user != null) {
        //Register is successful
        return true;

      } else {
        //register is not successful
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
