import 'package:elearning/src/presentation/views/login/signup_screen.dart';
import 'package:elearning/src/presentation/widgets/btn_primary_widget.dart';
import 'package:elearning/src/presentation/views/login/login_widgets/field_password_widget.dart';
import 'package:elearning/src/presentation/views/login/login_widgets/field_username_widget.dart';
import 'package:elearning/src/presentation/views/login/login_widgets/login_title_widget.dart';
import 'package:elearning/src/presentation/views/login/login_widgets/text_password_widget.dart';
import 'package:elearning/src/presentation/views/login/login_widgets/text_username_widget.dart';
import 'package:elearning/src/utils/constants/imgs.dart';
import 'package:elearning/src/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        toolbarHeight: 150,
        title: const LoginTitle(title: AppStrings.login, showDetails: false),
      ),
      body: const LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const TextUsername(),
          const FieldUsername(),
          const SizedBox(
            height: 30,
          ),
          const TextPassword(),
          const FieldPassword(),
          const SizedBox(
            height: 30,
          ),
          const PrimaryBtn(text: AppStrings.login),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Align(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(AppStrings.textAccount),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ));
                    },
                    child: Text(
                      AppStrings.signup,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ))
              ],
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              AppStrings.orLogin,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(AppImages.imgGoogle),
              const SizedBox(
                width: 30,
              ),
              Image.asset(AppImages.imgFb),
            ],
          )
        ],
      ),
    );
  }
}