import 'package:TackosApp/bmiberegner/input_page/input_page.dart';
import 'package:TackosApp/screens/otherpages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'DASHBOARD',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: <Widget>[
          DropdownButton(
            icon: Icon(
              Icons.face,
              color: Colors.white,
            ),
            items: [
              DropdownMenuItem(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.exit_to_app,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Log ud',
                      ),
                    ],
                  ),
                ),
                value: 'logout',
              ),
            ],
            onChanged: (itemIdentifier) {
              if (itemIdentifier == 'logout') {
                FirebaseAuth.instance.signOut();
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Test Test',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              accountEmail: Text(
                'test@test.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profil'),
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
              // onTap: (itemIdentifier) {
              //   if (itemIdentifier == 'logout') {
              //     FirebaseAuth.instance.signOut();
              //   }
              // },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 20),
                  child: Container(
                    width: 125.0,
                    height: 125.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.techlicious.com/images/phones/girl-using-smartphone-700px.jpg'),
                        fit: BoxFit.fill,
                      ),
                      border:
                          Border.all(color: Colors.orange.shade700, width: 4),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SportRun()),
                  );
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 5, 30, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/sportrun.png'),
                      ),
                    ),
                    width: 125.0,
                    height: 125.0,
                    // decoration: BoxDecoration(image: DecorationImage(image: ),),
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 5, 40, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/walking.png'),
                      ),
                    ),
                    width: 125.0,
                    height: 125.0,
                    // decoration: BoxDecoration(image: DecorationImage(image: ),),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 10, 30, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/gymnastics.png'),
                      ),
                    ),
                    width: 125.0,
                    height: 125.0,
                    // decoration: BoxDecoration(image: DecorationImage(image: ),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 10, 40, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/scale.png'),
                      ),
                    ),
                    width: 125.0,
                    height: 125.0,
                    // decoration: BoxDecoration(image: DecorationImage(image: ),),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise()),
                  );
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 10, 30, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/barbell.png'),
                      ),
                    ),
                    width: 125.0,
                    height: 125.0,
                    // decoration: BoxDecoration(image: DecorationImage(image: ),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LeaderBoard()),
                  );
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 10, 40, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/leaderboard.png'),
                      ),
                    ),
                    width: 125.0,
                    height: 125.0,
                    // decoration: BoxDecoration(image: DecorationImage(image: ),),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
