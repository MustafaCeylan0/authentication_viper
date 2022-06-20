import 'package:authentication_viper/custom_styles_widgets.dart';
import 'package:authentication_viper/register/interactor.dart';
import 'package:authentication_viper/register/presenter.dart';
import 'package:authentication_viper/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:authentication_viper/entity.dart' as entity;
import 'package:authentication_viper/register/presenter.dart' as register_presenter;

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  RegisterPresenter presenter = RegisterPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Center(
                    child: Text(
                      "REGISTER PAGE",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: presenter.mail,
                    decoration:
                        kTextFieldDecoration.copyWith(hintText: "Enter Mail"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: presenter.password,

                    decoration: kTextFieldDecoration.copyWith(
                        hintText: "Enter Password"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: presenter.passwordConfirm,

                    decoration: kTextFieldDecoration.copyWith(
                        hintText: "Confirm Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //register activity
                        presenter.register(context);
                      },
                      child: Text("REGISTER")),
                  BottomNavigator(question: 'Already have an account? ', direction: 'Log-In',onTap: (){
                    OpenLoginPage(context);
                  },),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


