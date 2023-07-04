class Weather {
//  final String city;
  final double temperatureC;
  final String condition;
  final double aqi;
/*  final String conditionToday;
  final String conditionTomorrow;
  final String conditionTheDayAfterTomorrow;
  final double tempCToday;
  final double tempCTomorrow;
  final double tempCTheDayAfterTomorrow;*/

  Weather({
  //  this.city = '',
    this.aqi = 0,
/*    this.conditionToday = '',
    this.conditionTomorrow = '',
    this.conditionTheDayAfterTomorrow = '',
    this.tempCToday = 0,
    this.tempCTomorrow = 0,
    this.tempCTheDayAfterTomorrow = 0,*/
    this.temperatureC = 0,
    this.condition = "test",
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperatureC: json['current']['temp_c'],
      condition: json['current']['condition']['text'],
    //  city: json['location']['name'],
      aqi: json['current']['air_quality']['co'],
/*      conditionToday: json['forecast']['forecastday']['day']['mintemp_c'],
      conditionTomorrow: '',
      conditionTheDayAfterTomorrow: '',
      tempCToday: 0,
      tempCTomorrow: 0,
      tempCTheDayAfterTomorrow: 0,*/
    );
  }
}
