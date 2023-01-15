import 'package:app_with_map/const/app_constant.dart';
import 'package:app_with_map/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainHexColor,
      body: SafeArea(
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


                  // First Name Text Field
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: accentHexColor,
                      ),
                      child: TextField(
                        controller: firstNameController,

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),


                        decoration: InputDecoration(

                          hintText: "First Name",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: textHexColor,
                          ),
                          labelText: "First Name",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: textHexColor,
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white,),

                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  // Last Name Text Field
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: accentHexColor,
                      ),
                      child: TextField(
                        controller: lastNameController,

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),


                        decoration: InputDecoration(

                          hintText: "Last Name",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: textHexColor,
                          ),
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: textHexColor,
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white,),

                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                // Email Text Field
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),


                        decoration: InputDecoration(

                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: textHexColor,
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: textHexColor,
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white,),

                          border: InputBorder.none,
                        ),
                      ),
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
                        controller: userNameController,

                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),


                        decoration: InputDecoration(

                          hintText: "User Name",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: textHexColor,
                          ),
                          labelText: "User Name",
                          labelStyle: TextStyle(
                            fontSize: 14,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),


                        decoration: InputDecoration(

                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: textHexColor,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: textHexColor,
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.white,),

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
                        controller: rePasswordController,
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: textHexColor,
                        ),


                        decoration: InputDecoration(

                          hintText: "Retype Password",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: textHexColor,
                          ),
                          labelText: "Retype Password",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: textHexColor,
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.white,),

                          border: InputBorder.none,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                fontSize: 20,

                              ),
                            ),
                          ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "Already have an account? ",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
