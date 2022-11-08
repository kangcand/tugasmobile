import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class HomeScreen extends StatelessWidget {
  final List wisata = [
    "Ubud",
    "Nusa Penida",
    "Pantai Kuta",
  ];

  final List images = [
    "assets/images/ubud.jpg",
    "assets/images/nusapenida.jpg",
    "assets/images/kuta.jpg",
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
        child: ListView.builder(
          itemCount: wisata.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.bottomLeft,
              height: displayHeight(context) * 0.25,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(10), //You can use EdgeInsets like above
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("${images[index]}"), fit: BoxFit.cover),
              ),
              child: Text(
                "${wisata[index]}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // color: Colors.black,
                  fontSize: 14,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
