import 'package:flutter/material.dart';
import 'package:navigation/mainPage.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Hobby"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Hobby',
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
