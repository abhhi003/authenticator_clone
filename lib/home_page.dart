import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'styles.dart';
import 'reusable_card.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:math';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentStep = DateTime.now().second;

  String card1 =
      Random().nextInt(10).toString() + Random().nextInt(10).toString();
  String card2 =
      Random().nextInt(10).toString() + Random().nextInt(10).toString();
  String card3 =
      Random().nextInt(10).toString() + Random().nextInt(10).toString();

  void updateCards() {
    card1 = Random().nextInt(10).toString() + Random().nextInt(10).toString();
    card2 = Random().nextInt(10).toString() + Random().nextInt(10).toString();
    card3 = Random().nextInt(10).toString() + Random().nextInt(10).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Alert(
              context: context,
              style: alertStyle,
              title: '',
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Icon(
                      Icons.account_circle,
                      size: 120.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text(
                      'Employee Name',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Text(
                    'Employee Id',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ).show();
          },
          child: Icon(
            Icons.account_circle,
            size: 36.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        title: Text(
          'Ultimatix Authenticator',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'AuthCode',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableCard(
                cardChild: Center(
                  child: Text(
                    card1,
                    style: kCardTextStyle,
                  ),
                ),
              ),
              ReusableCard(
                cardChild: Center(
                  child: Text(
                    card2,
                    style: kCardTextStyle,
                  ),
                ),
              ),
              ReusableCard(
                cardChild: Center(
                  child: Text(
                    card3,
                    style: kCardTextStyle,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Text(
              'For one time use only!',
              style: kLabelTextStyle,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'AuthCode will expire in',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          CircularStepProgressIndicator(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                bottom: 45.0,
              ),
              child: Text(
                currentStep.toString(),
                style: kCardTextStyle,
              ),
            ),
            totalSteps: 59,
            currentStep: currentStep,
            stepSize: 25,
            circularDirection: CircularDirection.clockwise,
            selectedColor: Colors.red,
            unselectedColor: Colors.transparent,
            padding: pi / 90,
            width: 200,
            height: 200,
            startingAngle: pi / 2,
            arcSize: pi,
            gradientColor: LinearGradient(
              colors: [
                Colors.red,
                Colors.purple[400],
                Colors.blue,
                Colors.cyan
              ],
            ),
          ),
          FlatButton(
            child: Text('Click'),
            color: Colors.blue,
            onPressed: () {
              setState(() {
                if (currentStep < 1) {
                  updateCards();
                } else {
                  currentStep--;
                }
              });
            },
          )
        ],
      ),
    );
  }
}
