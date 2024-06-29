import 'package:flutter/material.dart';
import 'dart:convert';
import '../components/weather_service.dart';
import '../model/weather_model.dart';

class ApiProvider extends ChangeNotifier {
  WeatherModel? data;
  bool isLoading = true;
  String currentLocation = "Surat";

  ApiProvider() {
    getData(currentLocation);
  }

  getData(String city) async {
    isLoading = true;
    notifyListeners();
    String? json = await ApiService().apicalling(city);
    if (json != null) {
      data = WeatherModel.fromJson(jsonDecode(json));
    } else {
      print("Failed to fetch data");
    }
    isLoading = false;
    notifyListeners();
  }

  void changeLocation(String newLocation) {
    currentLocation = newLocation;
    getData(newLocation);
  }
}
