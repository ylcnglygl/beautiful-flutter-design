import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var bigTitleStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 34.0,
  color: Colors.white,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
);

var profileNameStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontSize: 22.0,
  color: Colors.white,
);

var informationTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontSize: 17.0,
  color: Colors.white,
);

var buttonTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 17.0,
  color: Color(0xff9EADFF),
);
var defineStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontSize: 15.0,
  color: Colors.white,
);

var profileTitleStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 13.0,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  color: Colors.white.withOpacity(0.7),
);
