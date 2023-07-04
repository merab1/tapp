class Weather {
  final double temperatureC;
  final String condition;
  final double aqi;
  final String location;
  final double minTemp;
  final double maxTemp;
  final double minTemp1;
  final double maxTemp1;
  final double minTemp2;
  final double maxTemp2;
  final String date;
  final String dateCondition;
  final String date1;
  final String dateCondition1;
  final String date2;
  final String dateCondition2;

  Weather({
    this.aqi = 0,
    this.temperatureC = 0,
    this.condition = '',
    this.location = '',
    this.minTemp = 0,
    this.maxTemp = 0,
    this.minTemp1 = 0,
    this.maxTemp1 = 0,
    this.minTemp2 = 0,
    this.maxTemp2 = 0,
    this.date = '',
    this.dateCondition = '',
    this.date1 = '',
    this.dateCondition1 = '',
    this.date2 = '',
    this.dateCondition2 = '',
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperatureC: json['current']['temp_c'],
      condition: json['current']['condition']['text'],
      aqi: json['current']['air_quality']['co'],
      location: json['location']['name'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],

      minTemp1: json['forecast']['forecastday'][1]['day']['mintemp_c'],
      maxTemp1: json['forecast']['forecastday'][1]['day']['maxtemp_c'],

      minTemp2: json['forecast']['forecastday'][2]['day']['mintemp_c'],
      maxTemp2: json['forecast']['forecastday'][2]['day']['maxtemp_c'],

      date: json['forecast']['forecastday'][0]['date'],
      dateCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],

      date1: json['forecast']['forecastday'][1]['date'],
      dateCondition1: json['forecast']['forecastday'][1]['day']['condition']['text'],

      date2: json['forecast']['forecastday'][2]['date'],
      dateCondition2: json['forecast']['forecastday'][2]['day']['condition']['text'],
    );
  }
}
