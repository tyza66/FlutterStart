// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

void main() => runApp(MyApp(
    // ignore: prefer_const_literals_to_create_immutables
    items: new List<String>.generate(1000, (i) => "Item $i")));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcom to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'This is a Flutter Start Demo By:tyza66',
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
            child: Container(child: MyColumn()
                /*ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
              );
            },
          ),*/
                /*
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
          */
                /*
          width: 300,
          height: 200,
          color: Colors.lightBlue,
          */
                /*
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
          */
                /*
          child: Image.network(
            'https://i0.hdslb.com/bfs/face/9517a7cb97a237d3548de571ba61e1cc62731c0c.jpg@240w_240h_1c_1s.webp',
            fit: BoxFit.contain,
            color: Colors.lightBlue,
            colorBlendMode: BlendMode.darken,
            repeat: ImageRepeat.noRepeat
          ),*/
                //child: MyList(),
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

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.pink,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightGreen,
        )
      ],
    );
  }
}

class MyGridListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        children: const <Widget>[
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data")
        ]);
  }
}

class MyGridListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0, //行间距
          crossAxisSpacing: 2.0, //列间距
          childAspectRatio: 1.0),
      children: [
        new Image.network(
          'https://i0.hdslb.com/bfs/face/9517a7cb97a237d3548de571ba61e1cc62731c0c.jpg@240w_240h_1c_1s.webp',
          fit: BoxFit.cover,
        ),
        new Image.network(
          'https://i0.hdslb.com/bfs/face/9517a7cb97a237d3548de571ba61e1cc62731c0c.jpg@240w_240h_1c_1s.webp',
          fit: BoxFit.cover,
        ),
        new Image.network(
          'https://i0.hdslb.com/bfs/face/9517a7cb97a237d3548de571ba61e1cc62731c0c.jpg@240w_240h_1c_1s.webp',
          fit: BoxFit.cover,
        ),
        new Image.network(
          'https://i0.hdslb.com/bfs/face/9517a7cb97a237d3548de571ba61e1cc62731c0c.jpg@240w_240h_1c_1s.webp',
          fit: BoxFit.cover,
        )
      ],
    );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: RaisedButton(
          onPressed: () {},
          color: Colors.lightBlue,
          child: Text('按钮1'),
        )),
        Expanded(
            child: RaisedButton(
          onPressed: () {},
          color: Colors.lightBlueAccent,
          child: Text('按钮2'),
        )),
        Expanded(
            child: RaisedButton(
          onPressed: () {},
          color: Colors.lightGreen,
          child: Text('按钮3'),
        ))
      ],
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('A'), Expanded(child: Text('B')), Text('C'), Text('D')],
    );
  }
}
