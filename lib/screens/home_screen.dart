import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tugas_mobile/helpers/size_helper.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    "assets/images/ubud.jpg",
    "assets/images/nusapenida.jpg",
    "assets/images/kuta.jpg",
    "assets/images/rinjani.jpg",
    "assets/images/rancaupas.jpg",
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool _enabled = true;

  void initState() {
    // startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Center(),
      ),
    );
  }
}
