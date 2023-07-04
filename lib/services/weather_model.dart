class Weather {
  final double temperatureC;
  final double temperatureF;
  final String condition;

  Weather({
    this.temperatureC = 0,
    this.temperatureF = 0,
    this.condition = "test",
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperatureC: json['current']['temp_c'],
      condition: json['current']['condition']['text'],
    );
  }
}
