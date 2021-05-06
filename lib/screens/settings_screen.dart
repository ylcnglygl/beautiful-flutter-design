import 'package:flutter/material.dart';
import 'package:swiftui/constants.dart';
import 'package:swiftui/widgets/button_widget.dart';
import 'package:swiftui/widgets/searchfield_widget.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff251F41),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Settings", style: bigTitleStyle),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text("Manage your Design+Code profile and account",
                    style: defineStyle.copyWith(
                        color: Colors.white.withOpacity(0.5))),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFieldWidget(
                    "Choose Photo", "usernameIcon.png", 0xff1A1433),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFieldWidget("Meng To", "photoIcon.png", 0xff1A1433),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child:
                    TextFieldWidget("mengto", "passwordIcon.png", 0xff1A1433),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFieldWidget(
                    "designcode.io", "linkIcon.png", 0xff1A1433),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFieldWidget(
                    "I teach code to designers and design to developers",
                    "bioIcon.png",
                    0xff1A1433),
              ),
              ButtonWidget("Save Settings", Color(0xff1A123E).withOpacity(0.9)),
            ],
          ),
        ),
      ),
    );
  }
}
