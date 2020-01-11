import 'package:example1/home.dart';
import 'package:example1/reward.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Reward user = Reward();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stark"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 10),
              child: Text(
               "${Reward.coins}",
                style: TextStyle(fontSize: 25, color: Colors.yellowAccent),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 14,10, 2),
              child: Icon(
                Icons.monetization_on,
                color: Colors.yellowAccent,
              ),
            ),
          ],
        ),
        body: Home(),
      ),
    );
  }
}
