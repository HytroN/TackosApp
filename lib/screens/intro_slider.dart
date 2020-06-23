import 'package:TackosApp/main.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "VELKOMMEN",
        description:
            "Velkommen til Tackos Motion, bevæg dig og bliv belønnet med point til nå første pladsen før dine venner.",
        pathImage: 'images/phonecheck.gif',
        widthImage: 250.0,
        heightImage: 200.0,
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "TRÆNING",
        description:
            "For hver gennemførte aktivitet, vil du modtage point til din score",
        pathImage: "images/workout.gif",
        widthImage: 250.0,
        heightImage: 250.0,
        backgroundColor: Colors.teal[300],
      ),
    );
    slides.add(
      new Slide(
        title: "KOM I GANG",
        description: "Kom i gang og indtag førstepladsen i dag!",
        pathImage: "images/bicycle.gif",
        backgroundColor: Colors.lightBlue,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      nameSkipBtn: 'SKIP',
      nameDoneBtn: 'OPRET',
      nameNextBtn: 'NÆSTE',
      namePrevBtn: 'TILBAGE',
      onDonePress: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthScreenPage()),
        );
      },
    );
  }
}
