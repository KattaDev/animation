import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double _height = 50.0;

  final Color _color = Colors.blue;
  int ind = -1;
  final double _width = 400.0;
  List<Widget> text = [
    Text(
      "Healthcare",
      style: TextStyle(
          fontSize: 25,
          color: Colors.blue.shade800,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    Text(
      "FOOD & DRINK",
      style: TextStyle(
          fontSize: 25,
          color: Colors.yellow.shade800,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    Text(
      "BEATY",
      style: TextStyle(
          fontSize: 25,
          color: Colors.red.shade800,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    Text(
      "BABY & KIDS",
      style: TextStyle(
          fontSize: 25,
          color: Colors.pink.shade800,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    Text(
      "HOMEWARES",
      style: TextStyle(
          fontSize: 25, color: Colors.white70, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
  ];
 

  List<Color> _colors = [
    Colors.blue.shade100,
    Colors.green,
    Colors.pink.shade100,
    Colors.blue.shade800,
    Colors.orange
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
        itemBuilder: (c, index) {
          return InkWell(
            child: AnimatedContainer(
              curve: Curves.elasticOut,
              duration: Duration(milliseconds: 400),
              color: _colors[index],
              height: ind == index ? MediaQuery.of(context).size.height*0.3 : MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width,
              child: Center(
              child: ind!=index? text[index]:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                text[index],
                Text("Text bir"),
                Text("Text besh"),
                Text("Text uch"),
                Text("Text ikki"),
              ],),
              )
            ),
            onTap: () {
              if (ind == index) {
                ind = -1;
              } else {
                ind = index;
              }

              setState(() {});
            },
          );
        },
        itemCount: 5,
      )),
    );
  }

  change() {
    setState(() {
      _height = _height == 100 ? 200 : 100;
    });
  }
}
