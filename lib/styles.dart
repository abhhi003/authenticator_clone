import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kCardTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50.0,
);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
);

const kBackgroundColor = Color(0xFF131313);

var alertStyle = AlertStyle(
  animationType: AnimationType.fromBottom,
  alertAlignment: Alignment.center,
  isCloseButton: true,
  isButtonVisible: false,
  backgroundColor: kBackgroundColor,
  isOverlayTapDismiss: true,
  animationDuration: Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  ),
);
