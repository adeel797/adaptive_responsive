import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;

double screenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;

double shortestSide(BuildContext context) =>
    MediaQuery.sizeOf(context).shortestSide;

double longestSide(BuildContext context) =>
    MediaQuery.sizeOf(context).longestSide;

// Safe areas
double safeTop(BuildContext context) => MediaQuery.paddingOf(context).top;

double safeBottom(BuildContext context) => MediaQuery.paddingOf(context).bottom;

double safeLeft(BuildContext context) => MediaQuery.paddingOf(context).left;

double safeRight(BuildContext context) => MediaQuery.paddingOf(context).right;
