import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tapp/services/network.dart';
import 'package:tapp/services/weather_model.dart';
import 'package:tapp/widgets/weather_row.dart';
import 'package:tapp/widgets/weather_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Weather weather = Weather();
  WeatherService weatherService = WeatherService();

  String currentWeather = "Sunny";
  double tempC = 0;
  double aqi = 0;
  String location = '';

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  void getWeather() async {
    weather = await weatherService.getWeatherData("London");

    setState(() {
      currentWeather = weather.condition;
      tempC = weather.temperatureC;
      aqi = weather.aqi;
      location = weather.location;
    });
    if (kDebugMode) {
      print(weather.temperatureC);
      print(weather.condition);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 36,
              color: Colors.yellow[600],
              onPressed: () {},
              icon: const Icon(Icons.location_on),
            ),
             Text(
              location,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[600]),
              child: const Text(
                'Turn on location services',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30,),
             Text(
              '${tempC.round().floor()}',
              style: const TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
             Text(
              currentWeather,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[600]),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    aqi.round().floor().toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60,),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 32),
                child: weatherTextWidget('More details >'),
              ),
            ),
            weatherRow(
              Icons.sunny_snowing,
              'Today - Thunderstorm',
              '29/25',
            ),
            weatherRow(
              Icons.cloud,
              'Fri - Cloudy',
              '30/25',
            ),
            weatherRow(
              Icons.sunny_snowing,
              'Today - Thunderstorm',
              '25/20',
            ),
            const SizedBox(height: 40,),
        ElevatedButton(
          onPressed: () {},
          style:
          ElevatedButton.styleFrom(backgroundColor: Colors.yellow[600]),
          child: const Text(
            '5-day forecast',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
