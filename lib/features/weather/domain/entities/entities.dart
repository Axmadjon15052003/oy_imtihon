// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherEntities {
  final String name;
  final String country;
  final int windSpeed; 
  final int humidity; 
  final int cloud;
  final int temp;
  final String condition;
  WeatherEntities({
    required this.name,
    required this.country,
    required this.windSpeed,
    required this.humidity,
    required this.cloud,
    required this.temp,
    required this.condition,
  });
  

  @override
  String toString() {
    return 'WeatherEntities(name: $name, country: $country, windSpeed: $windSpeed, humidity: $humidity, cloud: $cloud, temp: $temp, condition: $condition)';
  }
}
