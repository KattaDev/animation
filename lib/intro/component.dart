import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

final page = [
  PageViewModel(
    pageColor: const Color(0xFF607D8B),
    iconImageAssetPath: 'assets/taxi-driver.png',
    body: Text(
      'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
    ),
    title: Text('Cabs'),
    mainImage: Image.asset(
      'assets/taxi.png',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),
  PageViewModel(
    pageColor: const Color(0xFF607D8B),
    iconImageAssetPath: 'assets/taxi-driver.jpg',
    body: const Text(
      'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
    ),
    title: const Text('Cabs'),
    mainImage: Image.asset(
      'assets/taxi.jpg',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    titleTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),
];
