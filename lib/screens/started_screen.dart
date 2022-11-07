import 'package:flutter/material.dart';

class StartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Mobile"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
