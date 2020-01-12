
import 'package:flutter/material.dart';

import 'home.dart';
import 'reward.dart';

class Screen1 extends StatefulWidget {
  //  int coins;
  // Screen1({this.coins});
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
// int coins;
// _Screen1State({this.coins});
  // Reward _reward = Reward(reward: 100);
  // int coins = _reward.getReward();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1!"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text("Click To Win!!"),
              onPressed: () {
                setState(() {
                  Reward.coins = Reward.coins+=50;
                });
              },
            ),
          ),
          RaisedButton(
            child: Text("Go Back!!"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text("${Reward.coins}"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
