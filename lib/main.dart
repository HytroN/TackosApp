import 'package:TackosApp/screens/auth_screen.dart';
import 'package:TackosApp/screens/intro_slider.dart';
import 'package:TackosApp/screens/mian_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Dette return funktion, dette ville siges at det executer alt kode. Main() er det altid det første flutter og dart indlæser.
  runApp(
      MyApp()); // runApp er en funktion som kører MyApp(), MyApp() er en class
}

class MyApp extends StatelessWidget {
  // Forskellen mellem statefulwidget og statelesswidget er at statefulwidget giver dig muligheden for at ændre data hvor statelesswidget beholder de samme data'er
  @override // @override er en instance, som prioritere over for andre instance med samme navn.
  Widget build(BuildContext context) {
    // Widget build er der man bygger sit widget tree
    SystemChrome.setPreferredOrientations([
      // Bestemmer om telefonen kan vendes vandret
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      // Er en widget som tilbyder mange interesante tools, som navigator eller themedata.
      debugShowCheckedModeBanner: false, // Fjerner debug banner
      color: Colors.lightBlue, // En farve
      home:
          IntroScreen(), // Start siden er IntroSceen() som er en class i intro_slider.dart, som kaldes.
    );
  }
}

class AuthScreenPage extends StatelessWidget {
  // AuthScreenPage bliver kaldt når brugeren har været igennem intro slideren
  // This widget is the root of your application.
  @override // @override er en instance, som prioritere over for andre instance med samme navn.
  Widget build(BuildContext context) {
    // Widget build er der man bygger sit widget tree
    return MaterialApp(
      // Er en widget som tilbyder mange interesante tools, som navigator eller themedata.
      debugShowCheckedModeBanner: false,
      title: 'Tackos Motion',
      theme: ThemeData(
        // Definere hvad vores theme er for vores app
        primarySwatch: Colors.orange,
      ),
      home: StreamBuilder(
        // Er en widget der bygger i sig selv
        stream: FirebaseAuth.instance
            .onAuthStateChanged, // Modtag FirebaseUser, hver gang brugeren logger ind eller signOut
        builder: (ctx, userSnapshot) {
          //
          if (userSnapshot.hasData) {
            // Det betyder har man har fundet det specifikke token for logindet.
            return MainPage();
          }
          return AuthScreen(); // Hvis det ikke passer return det AuthScreen() Igen
        },
      ),
    );
  }
}
