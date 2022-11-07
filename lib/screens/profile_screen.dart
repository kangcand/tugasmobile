import 'package:flutter/material.dart';
import 'package:tugas_mobile/helpers/size_helper.dart';

class ProfileScreen extends StatelessWidget {
  final double _top = 280 - 144;
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: displayHeight(context) * 0.25,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: _top - 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade700,
                    radius: 144 / 3,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
