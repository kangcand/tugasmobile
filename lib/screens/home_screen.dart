import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tugas_mobile/helpers/size_helper.dart';

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
        child: SingleChildScrollView(
          child: SizedBox(
            height: displayHeight(context) * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      // height: 300,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      // enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: imageList
                        .map(
                          (item) => Container(
                            margin: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
