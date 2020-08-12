import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

  getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      _latitude = position.latitude;
      _longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  lat() {
    return _latitude;
  }

  lon() {
    return _longitude;
  }
}
