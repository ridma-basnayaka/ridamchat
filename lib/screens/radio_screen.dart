import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/ai_util.dart';

class RadioScreen extends StatefulWidget {
  @override
  _RadioScreenState createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Stack(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(colors: [
                AIColors.primaryColor1,
                AIColors.PrimaryColor2,
              ]))
              .make()
        ],
      ),
    );
  }
}
