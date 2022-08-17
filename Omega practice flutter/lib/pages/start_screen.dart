import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text("Приветствуем", style: TextStyle(color: Colors.black, fontSize: 20),),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 270)),
              Text("Здравствуйте,", style: TextStyle(color: Colors.orange[200], fontSize: 20), textAlign: TextAlign.center),
              Text("Username,", style: TextStyle(color: Colors.orange[200], fontSize: 20), textAlign: TextAlign.center),
              Text("с возвращением!", style: TextStyle(color: Colors.orange[200], fontSize: 20), textAlign: TextAlign.center),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/main");
              }, child: Text("Продолжить", style: TextStyle(color: Colors.black, fontSize: 20)))
          ]
          )
        ],
      ),
    );
  }
}
