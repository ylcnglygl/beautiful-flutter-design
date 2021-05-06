import 'package:flutter/material.dart';
import 'package:swiftui/constants.dart';
import 'package:swiftui/screens/create_account.dart';
import 'package:swiftui/widgets/button_widget.dart';
import 'package:swiftui/widgets/searchfield_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 20 / 31,
                  decoration: BoxDecoration(
                    color: Color(0xff281B5A).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign in",
                        style: bigTitleStyle,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Access to 120+ hours of courses, tutorials and livestreams",
                          style: defineStyle,
                        ),
                      ),
                      TextFieldWidget("Email address", "email.png", 0xff281B5A),
                      SizedBox(height: 16.0),
                      TextFieldWidget("*****", "lock.png", 0xff281B5A),
                      SizedBox(height: 16.0),
                      ButtonWidget("Sign in", Color(0xff1A123E)),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: [
                            Text("Don’t have an account?", style: defineStyle),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateAccount()));
                              },
                              child: Text(
                                " Sign up",
                                style: TextStyle(
                                    color: Colors.purpleAccent[100],
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("Forgot password?", style: defineStyle),
                          Text(
                            " Reset Password",
                            style: TextStyle(
                                color: Colors.purpleAccent[100],
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          height: 0.5,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Center(child: Image.asset('assets/apple.png')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
