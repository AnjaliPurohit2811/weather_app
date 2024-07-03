import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/weather_model.dart';
import '../provider/weather_provider.dart';



class DetailScreen extends StatefulWidget {
  final Location location;
  final CurrentWeather current;

  const DetailScreen({
    required this.location,
    required this.current,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32255A),
      appBar: AppBar(
        title: Text(widget.location.name , style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff32255A),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20 , left: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Current Weather',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https:${widget.current.conditionIcon}'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                '${widget.current.tempC} °C',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.current.conditionText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Wind',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 20,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 10),
              //           Text(
              //             '${current.windKph} km/h',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 18,
              //             ),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Humidity',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 20,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 10),
              //           Text(
              //             '${current.humidity}%',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 18,
              //             ),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Feels Like',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 20,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           SizedBox(height: 10),
              //           Text(
              //             '${current.feelslikeC} °C',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 18,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                child: Text(
                  'Back to Main Screen',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


