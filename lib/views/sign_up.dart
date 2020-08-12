import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final formKey = GlobalKey<FormState>();

  TextEditingController userNameTextEditingController =
      new TextEditingController();

  TextEditingController emailTextEditingController =
      new TextEditingController();

  TextEditingController passwordTextEditingController =
      new TextEditingController();

// // loading option
// signMeUP() {
//   if (formKey.currentState.validate()) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (val) {
                        return val.isEmpty || val.length < 3
                            ? "Please provide a valid username"
                            : null;
                      },
                      controller: userNameTextEditingController,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("username"),
                    ),
                    TextFormField(
                      validator: (val) {
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val)
                            ? null
                            : "please provide a valid email.";
                      },
                      controller: emailTextEditingController,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("email"),
                    ),
                    TextFormField(
                      validator: (val) {
                        return val.length > 6
                            ? null
                            : "please provide password 6+ character";
                      },
                      controller: passwordTextEditingController,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("password"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    "Forgot Password?",
                    style: simpleTextStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              GestureDetector(
                onTap: () {
                  //When we click on sign in button
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff007EF4),
                        const Color(0xff2A75BC),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  "Sign Up with Google",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: mediumTextStyle(),
                  ),
                  Text(
                    "Sign in now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
