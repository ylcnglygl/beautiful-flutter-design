import 'package:flutter/material.dart';
import 'package:swiftui/constants.dart';
import 'package:swiftui/screens/settings_screen.dart';
import 'package:swiftui/widgets/container_divider.dart';
import 'package:swiftui/widgets/searchfield_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background-2.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 120.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 20 / 50,
                    decoration: BoxDecoration(
                      color: Color(0xff281B5A).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 66.0,
                              height: 66.0,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/cat.png'),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Profile Name", style: profileNameStyle),
                                SizedBox(height: 2.0),
                                Text("View Profile", style: profileTitleStyle),
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SettingsScreen()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff1A123E).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        ContainerDivider(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                              "I teach designers code and developers design",
                              style: profileNameStyle),
                        ),
                        Text("􀉉 Awarded 10 certificates since September 2020",
                            style: profileTitleStyle),
                        SizedBox(height: 16.0),
                        ContainerDivider(),
                        Row(
                          children: [
                            Image.asset('assets/Twitter.png',
                                width: 22.0, height: 17.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Icon(Icons.link,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text("designcode.io", style: profileTitleStyle),
                          ],
                        ),
                        SizedBox(height: 36.0),
                      ],
                    ),
                  ),
                  Image.asset('assets/Circle Button.png'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
