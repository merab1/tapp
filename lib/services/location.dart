import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude, longitude;
  LocationPermission? locationPermission;
  bool? serviseEnabled;

  Future<void> checkLocationPermission() async {
    serviseEnabled = await Geolocator.isLocationServiceEnabled();
    locationPermission = await Geolocator.checkPermission();

    if (kDebugMode) {
      print('Service status: $serviseEnabled');
    }

    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
    }
    if (locationPermission == LocationPermission.always ||
        locationPermission == LocationPermission.whileInUse) {
      await getCurrentLocation();
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}