import 'package:flutter/material.dart';
import 'package:weather_app/screen/homescreen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC2B7E2),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/img/logo.png'))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xff32255A),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text('Get Started' , style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
