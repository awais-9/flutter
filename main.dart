import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice App'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var top_leftimage = 1;
  var top_rightimage = 1;
  var bottom_leftimage = 1;
  var bottom_rightimage = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Text(
                "Player 1",
                textAlign : TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),

              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      top_leftimage =Random().nextInt(6)+1;

                    });
                    //print('Value of Variable $top_leftimage');
                  },
                  child: Image.asset('images/dice$top_leftimage.png'),
                ),
              ),
              Text(
                "Player 2",
                textAlign : TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 12.0,),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      top_rightimage =Random().nextInt(6)+1;
                    });
                    //print('Value of Variable $top_rightimage');
                  },
                  child: Image.asset('images/dice$top_rightimage.png'),
                ),
              ),
            ],
          ),
              SizedBox(height: 12.0,),
              SizedBox(width: 12.0,),

          Row(
            children: <Widget>[
              Text(
                "Player 4",
                textAlign : TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      bottom_leftimage =Random().nextInt(6)+1;
                    });
                    //print('Value of Variable $top_leftimage');
                  },
                  child: Image.asset('images/dice$bottom_leftimage.png'),
                ),
              ),
              Text(
                "Player 3",
                textAlign : TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            SizedBox(width: 12.0,),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      bottom_rightimage =Random().nextInt(6)+1;
                    });
                    SizedBox(width: 12.0,);
                    //print('Value of Variable $bottom_rightimage');
                  },
                  child: Image.asset('images/dice$bottom_rightimage.png'),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

}
