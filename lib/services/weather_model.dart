class Weather {
  final double temperatureC;
  final String condition;
  final double aqi;
  final String location;

  Weather({
    this.aqi = 0,
    this.temperatureC = 0,
    this.condition = '',
    this.location = ''
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperatureC: json['current']['temp_c'],
      condition: json['current']['condition']['text'],
      aqi: json['current']['air_quality']['co'],
      location: json['location']['name'],
    );
  }
}
