import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _totalDots = 2;
  int _currentPosition = 0;


  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
      activeColor: Colors.red,
      size: Size.square(15.0),
      activeSize: Size.square(35.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    );

 

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dots indicator example'),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            children: [
              _buildRow([
                const Text('Individual custom dot'),
                DotsIndicator(
                  dotsCount: _totalDots,
                  position: 1,
                  reversed: true,
                  
                  decorator: DotsDecorator(
                    spacing: EdgeInsets.only(right: 2),
                    colors: [
                      Color(0xFFA0E8F9),
                      Color(0xFFA0E8F9)
                     
                    ].reversed.toList(),
                    activeColors: [
                      Colors.transparent,
                      Colors.transparent,
                     
                    ],
                    sizes: [
                      Size(30.16, 6.85),
                      Size(30.16, 6.85),
                     
                    ],
                    activeSizes: [
                      Size(6.85, 6.85),
                      Size(6.85, 6.85),
                      
                    ],
                    shapes: [
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ],
                    activeShapes: [
                      RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.37,
                            color: Color(0xFFA0E8F9)
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.37,
                            color: Color(0xFFA0E8F9)
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
