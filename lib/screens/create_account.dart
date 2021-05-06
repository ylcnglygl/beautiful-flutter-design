import 'package:flutter/material.dart';
import 'package:swiftui/constants.dart';
import 'package:swiftui/screens/login_page.dart';
import 'package:swiftui/widgets/button_widget.dart';
import 'package:swiftui/widgets/container_divider.dart';
import 'package:swiftui/widgets/searchfield_widget.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                        "Sign Up",
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
                      ButtonWidget("Create Account", Color(0xff1A123E)),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "By clicking on Sign up, you agree to our Terms of service and Privacy policy.",
                          style: defineStyle,
                        ),
                      ),
                      ContainerDivider(),
                      Row(
                        children: [
                          Text("Already have an account?", style: defineStyle),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text(
                              " Sign in",
                              style: TextStyle(
                                  color: Colors.purpleAccent[100],
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
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
