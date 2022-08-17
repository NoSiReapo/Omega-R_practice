import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cloudy.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.cloud,
                size: 75.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                ' 12°',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
                  letterSpacing: -5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}