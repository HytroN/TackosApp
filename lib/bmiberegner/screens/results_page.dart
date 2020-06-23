import 'package:flutter/material.dart';
import 'dart:math';

class CalcBrain {
  CalcBrain({
    this.height,
    this.weight,
  }); //Constructor gemmer det i en property

  final int
      height; // Opbevare informationerne i en final int, så det er i en final stage samt et tal uden decimaler
  final int
      weight; // Opbevare informationerne i en final int, så det er i en final stage samt et tal uden decimaler

  String calcBMI() {
    _bmi = weight /
        pow(height / 100,
            2); // Regner det ud fra de informationer fra oven. pow behandler tal der er sat ind
    return _bmi.toStringAsFixed(1); // Det skal returneres med et decimal
  }

  double _bmi; // Double betyder at det med decimaler

  String getResult() {
    // Hvis _bmi er over "tal" skal det return med tekst "status"
    if (_bmi >= 25) {
      // Tjekker om _bmi er over eller ligemed 25
      return 'Overvægtig';
    } else if (_bmi > 18.5) {
      // Tjekker om _bmi er over 18.5
      return 'Normal vægtig';
    } else {
      // Alt under 18.5 return som "undervægtig"
      return 'Undervægtig';
    }
  }

  String getInterpret() {
    if (_bmi >= 25) {
      return 'Du har en højere end normal kropsvægt. Prøv at træne mere.';
    } else if (_bmi > 18.5) {
      return 'Du har en normal kropsvægt. Godt arbejde!';
    } else {
      return 'Du har en lavere kropsvægt end normalt. Du kan spise lidt mere.';
    }
  }
}

class ResultsPage extends StatelessWidget {
  ResultsPage({
    //Constructor gemmer det i en property
    this.bmiResult,
    this.resultText,
    this.interpret,
  });

  final String
      bmiResult; // Det gemmer vi så i en final string da, det ikke skal kunne ændre sig og derfor final
  final String
      resultText; // Det gemmer vi så i en final string da, det ikke skal kunne ændre sig og derfor final
  final String
      interpret; // Det gemmer vi så i en final string da, det ikke skal kunne ændre sig og derfor final

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'BMI BEREGNER',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: GestureDetector(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText
                          .toUpperCase(), // Der transformer text til uppercase, ligesom i CSS
                      style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      interpret,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 15.0),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 2.0),
            width: 260.0,
            child: RaisedButton(
              color: Colors.white,
              textColor: Colors.orange,
              elevation: 5.0,
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Text('BEREGN IGEN'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
