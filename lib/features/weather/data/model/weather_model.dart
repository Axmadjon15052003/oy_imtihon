


class WeatherModel {
  final Location location;
  final Current current;

  WeatherModel({
    required this.location,
    required this.current,
  });


  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(current: Current.fromJson(json["current"]), location: Location.fromJson(json['location']));
  }
}

class Current {
  final String last_updated;
  final int temp_c;
  final int is_day;
  Condition? condition;
  final int wind_kph;
  final int humidity;
  final int cloud;
  Current({
    required this.last_updated,
    required this.temp_c,
    required this.is_day,
    this.condition,
    required this.wind_kph,
    required this.humidity,
    required this.cloud,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      condition: Condition.fromJson(json['condition']),
      last_updated: json["last_updated"],
      temp_c: json['temp_c'],
      is_day: json['is_day'],
      wind_kph: json['wind_kph'],
      humidity: json['humidity'],
      cloud: json['cloud'],
    );
  }
}


class Condition {
  
    final String text;
  Condition({
    required this.text,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(text: json['text']);
  }
}

class Location {
  final String name;
  final String region;
  final String country;
  final int lat;
  final int lon;
  final String tz_id;
  final String localtime_epoch;
  final String localtime;
  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tz_id,
    required this.localtime_epoch,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'],
      lon: json['lon'],
      tz_id: json['tz_id'],
      localtime_epoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }
}
