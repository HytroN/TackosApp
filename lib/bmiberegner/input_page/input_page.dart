import 'package:TackosApp/bmiberegner/fade_route.dart';
import 'package:TackosApp/bmiberegner/input_page/gender/gender_card.dart';
import 'package:TackosApp/bmiberegner/input_page/height/height_card.dart';
import 'package:TackosApp/bmiberegner/input_page/running_slider.dart';
import 'package:TackosApp/bmiberegner/input_page/transition_dot.dart';
import 'package:TackosApp/bmiberegner/input_page/weight/weight_card.dart';
import 'package:TackosApp/bmiberegner/model/gender.dart';
import 'package:TackosApp/bmiberegner/result_page/result_page.dart';
import 'package:TackosApp/bmiberegner/widget_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() {
    return new InputPageState();
  }
}

class InputPageState extends State<InputPage> with TickerProviderStateMixin {
  AnimationController _submitAnimationController;
  Gender gender = Gender.other;
  int height = 170;
  int weight = 60;

  @override
  void initState() {
    super.initState();
    _submitAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _submitAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _goToResultPage().then((_) => _submitAnimationController.reset());
      }
    });
  }

  @override
  void dispose() {
    _submitAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.orange[400],
          appBar: AppBar(
            backgroundColor: Colors.orange[700],
            iconTheme: IconThemeData(
              color: Colors.white, //change your color here
            ),
            centerTitle: true,
            title: Text(
              'Tackos Motion',
              style: TextStyle(
                color: Colors.white,
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InputSummaryCard(
                gender: gender,
                weight: weight,
                height: height,
              ),
              Expanded(child: _buildCards(context)),
              _buildBottom(context),
            ],
          ),
        ),
        TransitionDot(animation: _submitAnimationController),
      ],
    );
  }

  Widget _buildCards(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: GenderCard(
                  gender: gender,
                  onChanged: (val) => setState(() => gender = val),
                ),
              ),
              Expanded(
                child: WeightCard(
                  weight: weight,
                  onChanged: (val) => setState(() => weight = val),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: HeightCard(
            height: height,
            onChanged: (val) => setState(() => height = val),
          ),
        )
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(16.0, context),
        right: screenAwareSize(16.0, context),
        bottom: screenAwareSize(22.0, context),
        top: screenAwareSize(14.0, context),
      ),
      child: RunningManSlider(
        submitAnimationController: _submitAnimationController,
        onSubmit: onPacmanSubmit,
      ),
    );
  }

  void onPacmanSubmit() {
    _submitAnimationController.forward();
  }

  _goToResultPage() async {
    return Navigator.of(context).push(FadeRoute(
      builder: (context) => ResultPage(
        weight: weight,
        height: height,
        gender: gender,
      ),
    ));
  }
}

class InputSummaryCard extends StatelessWidget {
  final Gender gender;
  final int height;
  final int weight;

  const InputSummaryCard({Key key, this.gender, this.height, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(screenAwareSize(16.0, context)),
      child: SizedBox(
        height: screenAwareSize(32.0, context),
        child: Row(
          children: <Widget>[
            Expanded(child: _genderText()),
            _divider(),
            Expanded(child: _text("${weight}kg")),
            _divider(),
            Expanded(child: _text("${height}cm")),
          ],
        ),
      ),
    );
  }

  Widget _genderText() {
    String genderText = gender == Gender.other
        ? '-'
        : (gender == Gender.male ? 'Mand' : 'Kvinde');
    return _text(genderText);
  }

  Widget _text(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Color.fromRGBO(143, 144, 156, 1.0),
        fontSize: 15.0,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _divider() {
    return Container(
      width: 1.0,
      color: Color.fromRGBO(151, 151, 151, 0.1),
    );
  }
}
