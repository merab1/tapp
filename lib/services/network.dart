import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:tapp/constants.dart';
import 'package:tapp/services/weather_model.dart';

class WeatherService {
  Future<Weather> getWeatherData(String place) async {
    try {
      final queryParameters = {
        'key': weatherApiKey,
        'q': place,
      };
      final url =
          'http://api.weatherapi.com/v1/current.json?key=$weatherApiKey&q=$place&aqi=yes';
      final uri =
          Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
      if (kDebugMode) {
        print(uri);
      }
      final response = await http.get(
        Uri.parse(url),
      );
      if (response.statusCode == 200) {
        return Weather.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Can not get weather");
      }
    } catch (e) {
      rethrow;
    }
  }
}
