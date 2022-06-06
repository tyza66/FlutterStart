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
        body: const Center(
          child: Text(
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
          ),
        ),
      ),
    );
  }
}
