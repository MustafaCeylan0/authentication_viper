import 'package:authentication_viper/register/view.dart';
import 'package:flutter/material.dart';

import 'login/view.dart';
import 'main.dart';

Future OpenLoginPage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>  LoginView(),
    ),
  );
}

Future OpenRegisterPage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>  RegisterView(),
    ),
  );
}

Future OpenHomePage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>  MyHomePage(title: "HOME PAGE"),
    ),
  );
}