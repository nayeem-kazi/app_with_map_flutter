import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../const/app_constant.dart';
import '../screens/map_screen.dart';
import '../screens/signup_screen.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height/3,
                    child: Image.asset("assets/images/logo.jpg"),
                  ),
                ),


                // User Name Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: accentHexColor,
                    ),
                    child: TextField(
                      controller: emailController,

                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: textHexColor,
                      ),

                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(

                        hintText: "User Name",
                        hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),
                        labelText: "User Name",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: textHexColor,
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                // Password Text Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: accentHexColor,
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: textHexColor,
                      ),
                      textInputAction: TextInputAction.next,


                      decoration: InputDecoration(

                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: textHexColor,
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white,),

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),


                // SignUp Button

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),



                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentHexColor,
                        ),

                        onPressed: (){
                          signInWithEmailAndPassword();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,

                            ),
                          ),
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: textHexColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentHexColor,
                        ),

                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Registration",
                            style: TextStyle(
                              fontSize: 20,

                            ),
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Signin Method

  Future signInWithEmailAndPassword() async {
    String emailAddress = emailController.text.toString();
    String password = passwordController.text.toString();
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }


}
