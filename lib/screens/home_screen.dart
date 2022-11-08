import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: GFCarousel(
                  viewportFraction: 0.5,
                  autoPlay: true,
                  items: imageList.map(
                    (url) {
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.asset(url,
                              fit: BoxFit.cover, width: 1000.0),
                        ),
                      );
                    },
                  ).toList(),
                  onPageChanged: (index) {
                    setState(() {
                      index;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
