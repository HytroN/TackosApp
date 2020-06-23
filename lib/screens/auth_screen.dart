import 'package:TackosApp/widgets/auth/auth_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _auth = FirebaseAuth
      .instance; // Der giver os en instance til firbase, som derefter automatisk sætter alt op. Alt er automatisk af firebase
  bool _isLoading = false;

  void _submitAuthForm(
    // Dette er en funktion som skal modtage alt input
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext
        ctx, // Siden vi får informationer fra AuthForm, skal vi bruge dette context
  ) async {
    //
    AuthResult
        authResult; // Indeholder en metode, der returnerer den aktuelt tilmeldte bruger, når det er afsluttet.

    try {
      // Try and catch, som prøver og tjekker om fejl
      setState(() {
        _isLoading = true; // kører når man logger ind
      });
      if (isLogin) {
        // Tjekker om man er i isLogin state
        authResult = await _auth.signInWithEmailAndPassword(
          // await venter på at det gennemføre
          email:
              email, // Indhold som vi får fra String email ovenfor, som var gemt før
          password:
              password, // Indhold som vi får fra String password ovenfor, som var gemt før
        );
      } else {
        // Hvis man ikke er på isLogin = true
        authResult = await _auth.createUserWithEmailAndPassword(
          // await venter på at det gennemføre
          email:
              email, // Indhold som vi får fra String email ovenfor, som var gemt før
          password:
              password, // Indhold som vi får fra String password ovenfor, som var gemt før
        );
      }
    } on PlatformException catch (err) {
      // Vi vil gerne have tjekket et specifikt error, derfor skriver vi on PlatformException, som giver fejl hvis email eller adgangskoden er forkert
      var message = 'Der opstod en fejl. Kontroller venligst dine fejl!';

      if (err.message != null) {
        message = err.message;
      }

      Scaffold.of(ctx).showSnackBar(
        // Snackbar er en lille bar fra neden, der skal vise fejl som en slags "feedback"
        SnackBar(
          content: Text(message), // Det indhold der skal vises
          backgroundColor: Theme.of(ctx).errorColor, // Theme farve
          behavior:
              SnackBarBehavior.floating, // Der får Snackbar til at floating
        ),
      );
      setState(() {
        _isLoading = false;
      });
    } catch (err) {
      // Hvis der nu skulle være eventuelle fejl, end den foroven, vil den blive printet ud i vores debug console.
      print(err);
      setState(() {
        _isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // For at få en baggrund
      backgroundColor: Colors.white,
      body: AuthForm(
        _submitAuthForm,
        _isLoading,
      ),
    );
  }
}
