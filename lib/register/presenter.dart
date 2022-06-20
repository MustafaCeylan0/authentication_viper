import 'package:authentication_viper/entity.dart';
import 'package:authentication_viper/register/interactor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPresenter extends RegisterInteractor {

  Future<Widget> register(BuildContext context) async {

    if (password.text == passwordConfirm.text) {

      var newUser = new User(mail: mail.text, password: password.text);
     bool register = await CreateNewUser(newUser);
      if (register) {
        const snackBar = SnackBar(
          content: Text("You have been registered successfully"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      }
    }else {
      const snackBar = SnackBar(
        content: Text("Password and Confirm Password are not matched!"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    return Container();
  }
}
