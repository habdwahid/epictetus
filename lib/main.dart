import 'package:epictetus/components/app_bar.dart';
import 'package:epictetus/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff374151),
                  Color(0xff313b4b),
                  Color(0xff2c3545),
                  Color(0xff262f3e),
                  Color(0xff212938),
                  Color(0xff1b2333),
                  Color(0xff161d2d),
                  Color(0xff111827),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            height: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  child: CustomAppBar(),
                ),
                Flexible(
                  flex: 9,
                  fit: FlexFit.tight,
                  child: MainScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Patrick Hand',
        cardTheme: const CardTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      title: 'Epictetus',
    );
  }
}
