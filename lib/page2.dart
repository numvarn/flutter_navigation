import 'package:flutter/material.dart';
import 'package:navigation/mainPage.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Gallery"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Gallery',
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
