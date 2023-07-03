import 'package:flutter/material.dart';
import 'package:tapp/widgets/weather_row.dart';
import 'package:tapp/widgets/weather_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const Text(
              'London',
              style: TextStyle(
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
            const Text(
              '27',
              style: TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Cloudy',
              style: TextStyle(
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
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'AQI 14',
                    style: TextStyle(
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
