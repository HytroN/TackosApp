import 'package:TackosApp/bmiberegner/screens/input_page.dart';
import 'package:TackosApp/screens/leaderboard.dart';
import 'package:TackosApp/screens/otherpages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  FirebaseUser currentUser;

  @override
  void initState() {
    super.initState();
    _loadCurrentUser();
  }

  void _loadCurrentUser() {
    FirebaseAuth.instance.currentUser().then((FirebaseUser user) {
      setState(() {
        // Kalder setState til at genbygge udseendet
        this.currentUser = user;
      });
    });
  }

  String _email() {
    if (currentUser != null) {
      //Tjekker om currentUser ikke er i ligemed null, derfor skal den return den email currentuser logger ind med.
      return currentUser.email;
    } else {
      return "Ingen bruger";
    }
  }

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
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'DASHBOARD',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Noobmaster69',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              accountEmail: Text(
                _email(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  'https://www.healthykids.org/_img2017/kid07.jpg',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Tilføj en ven'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text('Venneliste'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Indstillinger'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log ud'),
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://i.gifer.com/7hhR.gif'),
                      fit: BoxFit.fitWidth,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 15.0)
                    ],
                  ),
                  height: 125.0,
                  width: 250.0,
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
                        image: AssetImage('images/sportrun.png'),
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
                        image: AssetImage('images/walking.png'),
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
                        image: AssetImage('images/gymnastics.png'),
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InputPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/scale.png'),
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SportRun()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/barbell.png'),
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LeaderBoard()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/leaderboard.png'),
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
