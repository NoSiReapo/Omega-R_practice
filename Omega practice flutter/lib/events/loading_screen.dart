import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Загрузка...", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.blueGrey],
          ),
        ),
        child: Center(
          child: SpinKitRipple(
            color: Colors.white,
            size: 150.0,
            duration: Duration(milliseconds: 1200),
          ),
        ),
      ),
    );
  }
}
