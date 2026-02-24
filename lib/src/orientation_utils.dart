import 'package:flutter/material.dart';

bool isPortrait(BuildContext context) =>
    MediaQuery.orientationOf(context) == Orientation.portrait;

bool isLandscape(BuildContext context) =>
    MediaQuery.orientationOf(context) == Orientation.landscape;
