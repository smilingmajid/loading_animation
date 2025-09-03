import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loaging_animation/data/loding_animation_widget_list.dart';
import 'package:loaging_animation/widget/animation_grid_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, dynamic>> flutterspinkitlist = [
    {
      "name": "DoubleBounce",
      "widget": SpinKitDoubleBounce(
        color: const Color.fromARGB(255, 254, 0, 0),
        size: 50.0,
      ),
    },

    {
      "name": "RotatingCircle",
      "widget": SpinKitRotatingCircle(
        color: const Color.fromARGB(255, 170, 1, 170),
        size: 50.0,
      ),
    },
    {
      "name": "Circle",
      "widget": SpinKitCircle(
        color: const Color.fromARGB(255, 255, 0, 106),
        size: 50.0,
      ),
    },
    {
      "name": "ChasingDots",
      "widget": SpinKitChasingDots(
        color: const Color.fromARGB(255, 0, 213, 255),
        size: 50.0,
      ),
    },
    {
      "name": "PumpingHeart",
      "widget": SpinKitPumpingHeart(
        color: const Color.fromARGB(255, 0, 26, 255),
        size: 50.0,
      ),
    },
    {
      "name": "DualRing",
      "widget": SpinKitDualRing(
        color: const Color.fromARGB(255, 238, 255, 0),
        size: 50.0,
      ),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 50, 50, 50),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 14),
            Text(
              "Loading Animation Widget",
              style: TextStyle(color: Colors.white),
            ),

            animationGridWidget(lodingAnimationList),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: const Color.fromARGB(150, 30, 30, 30),
                thickness: 5,
              ),
            ),
            Text("Flutter Spinkit", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
