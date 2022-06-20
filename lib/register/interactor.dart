import 'package:firebase_auth/firebase_auth.dart';
import 'package:authentication_viper/entity.dart' as entity;
import 'package:flutter/cupertino.dart';

class RegisterInteractor {
  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();

  final _auth = FirebaseAuth.instance;
  Future<bool> CreateNewUser(entity.User userData) async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: userData.mail, password: userData.password);
      if (newUser != null) {
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
