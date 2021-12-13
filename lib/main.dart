import 'package:flutter/material.dart';
import 'package:flutter_application_taskone/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: MyHomePageApp(),
      home: HomeScreen(),

    );
  }
}

class MyHomePageApp extends StatelessWidget {
  const MyHomePageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.asset(
                      'assets/images/index.png',
                      width: 100,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Image.asset(
                      'assets/images/spash_bottom.png',
                      width: 230,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
