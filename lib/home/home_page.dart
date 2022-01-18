import 'package:animation/core/constans/constans.dart';
import 'package:animation/home/components/myfloating.dart';
import 'package:animation/servises/get_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Constans.maincolor;
  double _height = 200;
  double _width = 200;

  double _sliderValue =0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getSlider(),
          getContainerForrotate(),
          getContainerForScale(),
          getContainerForTranslate(),
        ],
      ),
      floatingActionButton: MyFloatingButton(),
    );
  }

  getSlider() {
    return Slider(
      onChanged: (v) {
        _sliderValue = v;
      },
      value: _sliderValue,
    );
  }

  getContainerForrotate() {
    return Container(
      child: Transform.rotate(angle: _sliderValue*6.28,
      child: Container(
       color: Colors.pink,
       height: Get.width*0.3,
       width: Get.width*0.3,

      ),
      ),
    );
  }
  getContainerForScale() {
    return Container(
      child: Transform.scale(scale: _sliderValue==0?1:_sliderValue,
      child: Container(
       color: Colors.black,
       height: Get.width*0.3,
       width: Get.width*0.3,
      ),
      ),
    );
  }
  getContainerForTranslate() {
    return Container(
      child: Transform.translate(offset: Offset(0, _sliderValue*100),
      child: Container(
       color: Colors.black,
       height: Get.width*0.3,
       width: Get.width*0.3,
      ),
      ),
    );
  }

  Center colorAnimation() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            color: _color,
            height: _height,
            width: _width,
          ),
        )
      ],
    ));
  }

  change() {
    setState(() {
      _color = Colors.black;
      _height = _height == 100 ? 200 : 100;
      _width = 200;
    });
  }
}
