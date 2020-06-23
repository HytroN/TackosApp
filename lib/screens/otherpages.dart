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
