import 'package:app_with_map/const/app_constant.dart';
import 'package:app_with_map/widget/signup_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SignupWidget(),
    );
  }
}


