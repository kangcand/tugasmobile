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
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    // height: 300,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      "Features",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.black26,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.black26,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.black26,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.black26,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.black26,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.black26,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Text(
                      "News",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Lorem Ipsum",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          // color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/100"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Lorem Ipsum",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          // color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Lorem Ipsum",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          // color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
