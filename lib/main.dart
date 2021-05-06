import 'package:flutter/material.dart';
import 'package:swiftui/screens/login_page.dart';
import 'package:swiftui/screens/settings_screen.dart';

import 'screens/create_account.dart';
import 'screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
