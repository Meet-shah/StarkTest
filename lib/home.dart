import 'package:flutter/material.dart';

import 'reward.dart';
import 'screen1.dart';
import 'screen2.dart';

class Home extends StatefulWidget {
  // int coins;
  // Home({this.coins});
  // Reward _reward = Reward();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // _submit(BuildContext context) async{
  //   final result =  await Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => Screen1()));
  //         Scaffold.of(context)
  //   ..removeCurrentSnackBar()
  //   ..showSnackBar(SnackBar(content: Text("$result")));

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(0, 14, 10, 2),
            child: Icon(
              Icons.monetization_on,
              color: Colors.yellowAccent,
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: InkWell(
              child: Text("Tap ME"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen1()));
              },
            ),
          ),
          Center(
            child: InkWell(
              child: Text("Tap ME"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
            ),
          ),

          // Text(result)

          // Center(
          //   child: Text(_reward.getReward().toString()),
          // ),
        ],
      ),
    );
  }
}
