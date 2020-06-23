import 'package:TackosApp/bmiberegner/screens/input_page.dart';
import 'package:TackosApp/screens/leaderboard.dart';
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
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: null,
      onPressed: () {
        return true;
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("ERROR-501"),
      content: Text("Denne funktion er ikke tilgængelig"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

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
          SizedBox(
            height: 6.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/chest.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/biceps.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/shoulders.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/prelum.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/calves.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/hamstrings.png'),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 5.0)
                      ],
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
