import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcom to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcom to Flutter',
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Container(
          alignment: Alignment.topLeft,
          width: 500,
          height: 400,
          //color: Colors.lightBlue,
          padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                // ignore: prefer_const_literals_to_create_immutables
                colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]),
            border: Border.all(width: 2.0, color: Colors.red),
          ),
          child: const Text("tyza66", style: TextStyle(fontSize: 40)),
        )
            /*Text(
            "Hello111 World111111111111111111111111111111111111111111111111111111111111",
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid
            ),
          ),*/
            ),
      ),
    );
  }
}
