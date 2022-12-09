import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Lottie.asset('assets/lottie/lottiefile1.json'),
              Lottie.asset('assets/lottie/lottiefile2.json'),
            ],
          ),
        ],
      ),
    );
  }
}
