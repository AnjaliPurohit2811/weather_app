import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/screen/homescreen/home_screen.dart';
import 'package:weather_app/screen/mainscreen/main_screen.dart';
import 'package:weather_app/screen/provider/weather_provider.dart';
import 'package:weather_app/screen/splashscreen/splash_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ApiProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
