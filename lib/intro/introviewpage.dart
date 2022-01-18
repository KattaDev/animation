import 'package:animation/animation/animation1.dart';
import 'package:animation/intro/component.dart';
import 'package:animation/servises/get_service.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:get/route_manager.dart';

class IntroViewPage extends StatelessWidget {
  const IntroViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      page,
      onTapDoneButton: () {
        GetService.box
            .write("isDone", true)
            .then((value) => Get.to(MyHomePage()));
      },
      showSkipButton: false,
      pageButtonTextStyles: const TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}
