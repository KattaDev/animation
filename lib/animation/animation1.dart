import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _animationColor;
  Animation? _animationAlignment;
  Animation? _animationCurve1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _animationController!.addListener(() {
      setState(() {});
    });
    _animationController!.forward();
    _animationColor = ColorTween(begin: Colors.red, end: Colors.cyan)
        .animate(_animationController!);
    _animationAlignment =
        AlignmentTween(begin: Alignment(0, -1), end: Alignment(0, 1))
            .animate(_animationController!);
    _animationController!.addStatusListener((status) {
      if (AnimationStatus.completed == status) {
        _animationController!.reverse().orCancel;
      } else if (AnimationStatus.dismissed == status) {
        _animationController!.forward().orCancel;
      }
    });
    _animationCurve1 =
        CurvedAnimation(parent: _animationController!, curve: Curves.elasticIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ELASTICANIMATION(),
         
        );
  }

  Center newMethod(BuildContext context) {
    return Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width*0.4,
              alignment: _animationAlignment!.value,
              child: Text(
          "Flutter",
          style: TextStyle(fontSize: _animationController!.value * 33,
          color: _animationColor!.value,
          ),
        ),
            )
              // child: InkWell(
                // child: Hero(
                //   tag: "container",
                //   child: Container(
                //     color: Colors.amber,
                //     height: MediaQuery.of(context).size.height * 0.2,
                //     width: MediaQuery.of(context).size.width * 0.35,
                //   ),
                // ),
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (_) {
                //     return Scaffold(
                //       body: Center(
                //         child: Hero(
                //             tag: "container",
                //             child: Container(
                //               height: MediaQuery.of(context).size.height,
                //               width: MediaQuery.of(context).size.width),
                //             )),
                //       );
                //   }));
                // },
              // ),
            );
  }

  ElasticIn ELASTICANIMATION() {
    return ElasticIn(
    duration: Duration(milliseconds: 600),
    child: Stack(
      children: [
        Container(
          color: Colors.blue,
          child: Center(),
        ),
        Positioned(
          top: 50,
          left: 50,
            child: Text(
          "Flutter",
          style: TextStyle(fontSize: _animationController!.value * 33),
        ))
      ],
    ),
  );
  }
}
