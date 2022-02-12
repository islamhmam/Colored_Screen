import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorView extends  StatelessWidget {
Color color;
ColorView(this.color);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // SystemChrome.setEnabledSystemUIOverlays([]);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: color,
    //
    // ));

    // SystemChrome.setEnabledSystemUIMode(
    //   SystemUiMode.manual,
    //   overlays: [],
    // );
    return Scaffold(

      body: Container(color: color,),

    );
  }
}
