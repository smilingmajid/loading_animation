import 'package:flutter/material.dart';
import 'package:loaging_animation/data/flutter_spinkit_list.dart';

import 'package:loaging_animation/data/loding_animation_widget_list.dart';
import 'package:loaging_animation/widget/animation_grid_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            animationGridWidget(flutterspinkitlist),
          ],
        ),
      ),
    );
  }
}
