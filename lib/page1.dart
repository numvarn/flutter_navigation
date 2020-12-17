import 'package:flutter/material.dart';
import 'package:navigation/mainPage.dart';
import 'package:navigation/page2.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Profile',
            ),
            ElevatedButton(
              child: Text('Main Page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
