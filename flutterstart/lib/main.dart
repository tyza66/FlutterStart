import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('获取电话')),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  const RouteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXin(context);
      },
      child: Text('去找'),
    );
  }

  _navigateToXin(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Xin()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class Xin extends StatelessWidget {
  const Xin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新页面'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                child: Text('第一个'),
                onPressed: () {
                  Navigator.pop(context, '都一条：123456');
                }),
            RaisedButton(
                child: Text('第二个'),
                onPressed: () {
                  Navigator.pop(context, '都二条：123456');
                }),
            RaisedButton(
                child: Text('第三个'),
                onPressed: () {
                  Navigator.pop(context, '都三条：123456');
                })
          ],
        ),
      ),
    );
  }
}
