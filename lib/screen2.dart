import 'package:flutter/material.dart';
import 'home.dart';
import 'reward.dart';
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2!"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text("Click To Win2!!"),
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