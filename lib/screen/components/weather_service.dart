import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiService{
  Future<String?>apicalling(String city) async{
    String api = 'http://api.weatherapi.com/v1/current.json?key=05e06d93917346e8adb92103242706&q=$city';
    final response = await http.get(Uri.parse(api));

    if(response.statusCode == 200)
    {
      print("Api is called succesfully");
      return response.body;
    }
    return null;
  }
}

