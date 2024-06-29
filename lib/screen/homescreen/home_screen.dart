import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32255A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5E4E95), width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5E4E95), width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.location_on_outlined, color: Colors.white, size: 30),
                      SizedBox(width: 20),
                      Text(
                        'Lagos, Nigeria',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(width: 120),
                      Icon(Icons.more_vert, color: Colors.white, size: 30),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Color(0xff3C2E6C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Tuesday, 02 Dec 2024',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 230,
                    width: 250,
                    child: Image.asset('asset/img/logo.png'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Cloudy 25',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Color(0xff5E4E95)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.air, color: Colors.white, size: 35),
                      SizedBox(height: 5),
                      Text(
                        '5km/h',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Wind',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.copyright, color: Colors.white, size: 35),
                      SizedBox(height: 5),
                      Text(
                        '42',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Temperature',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.water_drop_outlined, color: Colors.white, size: 35),
                      SizedBox(height: 5),
                      Text(
                        '70%',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Humidity',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeatherCard(day: 'Dec 02', icon: Icons.wb_cloudy_outlined, condition: 'Cloudy'),
                SizedBox(width: 30),
                WeatherCard(day: 'Dec 03', icon: Icons.wb_sunny_outlined, condition: 'Sunny'),
                SizedBox(width: 30),
                WeatherCard(day: 'Dec 04', icon: Icons.cloudy_snowing, condition: 'Rainy'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final String day;
  final IconData icon;
  final String condition;

  const WeatherCard({
    required this.day,
    required this.icon,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Color(0xff5E4E95)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
          Text(
            condition,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
