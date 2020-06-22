import 'package:flutter/material.dart';

class SportRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'TRÆNING',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

class Exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'TRÆNING',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'TRÆNING',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox.fromSize(
            size: Size(90, 90), // button width and height
            child: ClipOval(
              child: Material(
                color: Colors.orange, // button color
                child: InkWell(
                  splashColor: Colors.green, // splash color
                  onTap: () {}, // button pressed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.call), // icon
                      Text("Call"), // text
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
