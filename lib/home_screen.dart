import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
  final List<Map<String, dynamic>> lAWList = [
    {
      "name": "twistingDots",
      "widget":
          () => LoadingAnimationWidget.twistingDots(
            leftDotColor: const Color.fromARGB(255, 255, 0, 0),
            rightDotColor: const Color.fromARGB(255, 255, 0, 0),
            size: 50,
          ),
    },
    {
      "name": "waveDots",
      "widget":
          () => LoadingAnimationWidget.waveDots(
            color: const Color.fromARGB(255, 0, 106, 255),
            size: 50,
          ),
    },
    {
      "name": "inkDrop",
      "widget":
          () => LoadingAnimationWidget.inkDrop(
            color: const Color.fromARGB(255, 17, 255, 0),
            size: 50,
          ),
    },
    {
      "name": "twistingDots",
      "widget":
          () => LoadingAnimationWidget.twistingDots(
            leftDotColor: const Color.fromARGB(255, 255, 0, 221),
            rightDotColor: const Color.fromARGB(255, 255, 0, 221),
            size: 50,
          ),
    },
    {
      "name": "fallingDot",
      "widget":
          () => LoadingAnimationWidget.fallingDot(
            color: Color(0xfff5004F),
            size: 50,
          ),
    },
    {
      "name": "flickr",
      "widget":
          () => LoadingAnimationWidget.flickr(
            leftDotColor: Color(0xffFFAF00),
            rightDotColor: Color(0xffFFAF00),
            size: 50,
          ),
    },
    {
      "name": "beat",
      "widget":
          () => LoadingAnimationWidget.beat(
            color: Color.fromARGB(255, 255, 238, 0),
            size: 50,
          ),
    },
    {
      "name": "dotsTriangle",
      "widget":
          () => LoadingAnimationWidget.dotsTriangle(
            color: Color.fromARGB(255, 157, 0, 255),
            size: 50,
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true, // ارتفاع رو بر اساس محتوای خودش تنظیم کن
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemCount: lAWList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color.fromARGB(150, 30, 30, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        lAWList[index]["widget"](),
                        const SizedBox(height: 8),
                        Text(
                          lAWList[index]["name"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: const Color.fromARGB(150, 30, 30, 30),
                thickness: 5,
              ),
            ),
            Text("Flutter Spinkit", style: TextStyle(color: Colors.white)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap: true, // ارتفاع رو بر اساس محتوای خودش تنظیم کن
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemCount: flutterspinkitlist.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color.fromARGB(150, 30, 30, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        flutterspinkitlist[index]["widget"],
                        const SizedBox(height: 8),

                        Text(
                          flutterspinkitlist[index]["name"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
