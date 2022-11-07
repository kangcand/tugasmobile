import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tugas_mobile/screens/booking_screen.dart';
import 'package:tugas_mobile/screens/detail_screen.dart';
import 'package:tugas_mobile/screens/list_screen.dart';
import 'package:tugas_mobile/screens/profile_screen.dart';
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
      backgroundColor: Colors.black,
      // text: "Candra Herdiansyah",
      // textType: TextType.ColorizeAnimationText,
      // textStyle: TextStyle(
      //   fontSize: 40.0,
      // ),
      // colors: [
      //   Colors.purple,
      //   Colors.blueAccent,
      //   Colors.black,
      //   Colors.purple,
      // ],
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

class BottomMenu extends StatefulWidget {
  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    HomeScreen(),
    ListWisataScreen(),
    DetailWisataScreen(),
    BookingWisataScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.album_sharp, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.blueGrey.shade900,
        buttonBackgroundColor: Colors.lightBlue.shade800,
        backgroundColor: Colors.yellow.shade600,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[_page],
    );
  }
}
