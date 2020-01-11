import 'package:example1/reward.dart';
import 'package:example1/screen1.dart';
import 'package:example1/screen2.dart';
import 'package:flutter/material.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: InkWell(
            child: Text("Tap ME"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen1()));
            },
          ),
        ),
        Center(
          child: InkWell(
            child: Text("Tap ME"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen2()));
            },
          ),
        ),

        // Text(result)

        // Center(
        //   child: Text(_reward.getReward().toString()),
        // ),
      ],
    );
  }
}
