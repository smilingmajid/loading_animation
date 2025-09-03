//class LodingAnimationWidget
import 'dart:ui';

import 'package:loading_animation_widget/loading_animation_widget.dart';

final List<Map<String, dynamic>> lodingAnimationList = [
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

];
