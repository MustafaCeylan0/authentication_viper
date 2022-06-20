import 'package:authentication_viper/entity.dart';
import 'package:authentication_viper/register/interactor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'interactor.dart';

class LoginPresenter extends LoginInteractor {


  Future<Widget> login(BuildContext context) async {
    if (mail != null && password != null) {
      var newUser = new User(mail: mail.text, password: password.text);
      bool register = await LogInUser(newUser);
      if (register) {
        const snackBar = SnackBar(
          content: Text("You have been logged-in successfully"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      } else {
        const snackBar = SnackBar(
          content: Text("Password or mail is wrong"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
    return Container();
  }

}
