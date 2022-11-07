import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:tugas_mobile/screens/bottom_menu.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget started = SplashScreenView(
      navigateRoute: BottomMenu(),
      duration: 5000,
      imageSize: 250,
      imageSrc: "assets/images/logo.png",
      // text: "Candra Herdiansyah",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blueAccent,
        Colors.black,
        Colors.purple,
      ],
      backgroundColor: Colors.black,
    );

    return MaterialApp(
      title: "Tugas Mobile Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: started,
    );
  }
}
