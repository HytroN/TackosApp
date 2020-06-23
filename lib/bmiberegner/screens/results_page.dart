import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpret});

  final String bmiResult;
  final String resultText;
  final String interpret;

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
                      resultText.toUpperCase(),
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
