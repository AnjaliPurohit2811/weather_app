import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../homescreen/home_screen.dart';
import '../provider/weather_provider.dart';
 // Import the DetailScreen

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<ApiProvider>(context, listen: false).getData('New York'));
  }

  @override
  Widget build(BuildContext context) {
    ApiProvider providerTrue = Provider.of<ApiProvider>(context, listen: true);
    ApiProvider providerFalse = Provider.of<ApiProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: Color(0xff32255A),
      body: providerTrue.isLoading
          ? Center(child: CircularProgressIndicator())
          : providerTrue.data != null
          ? SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
              child: TextField(
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    providerFalse.changeLocation(value);
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5E4E95), width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5E4E95)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: 'Enter city name',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      location: providerTrue.data!.location,
                      current: providerTrue.data!.current,
                    ),
                  ),
                );
              },
              child: Container(
                height: 120,
                width: 380,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: Color(0xff3C2E6C),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            providerTrue.data!.location.name,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            '${providerTrue.data!.current.tempC} °C',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            providerTrue.data!.current.conditionText,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https:${providerTrue.data!.current.conditionIcon}'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('New York'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('London'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('Tokyo'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('Sydney'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('Paris'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('Moscow'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('Cairo'),
                ),
                ElevatedButton(
                  //style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          location: providerTrue.data!.location,
                          current: providerTrue.data!.current,
                        ),
                      ),
                    );
                  },
                  child: Text('Rio de Janeiro'),
                ),
              ],
            ),
          ],
        ),
      )
          : Center(child: Text('No data available')),
    );
  }
}
