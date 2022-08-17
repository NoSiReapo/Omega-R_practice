import 'dart:convert';

import 'package:omega_project/models/Weather.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static String _apiKey = "13bc5748321f31df6d3d43feb6ce22c6";

  static Future<Weather> fetchCurrentWeather({query, String lat = "", String lon =""}) async {
    Uri url = Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?q=$query&lat=$lat&lon=$lon&appid=$_apiKey&units=metric');
    final response = await http.post(url);

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }

  static Future<List<Weather>> fetchHourlyWeather({String? query, String lat = "", String lon =""}) async {
    Uri url = Uri.parse(
        'http://api.openweathermap.org/data/2.5/forecast?q=$query&lat=$lat&lon=$lon&appid=$_apiKey&units=metric');
    final response = await http.post(url);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<Weather> data = (jsonData['list'] as List<dynamic>)
          .map((item) {
        return Weather.fromJson(item);
      }).toList();
      return data;
    } else {
      throw Exception('Failed to load weather');
    }
  }
}