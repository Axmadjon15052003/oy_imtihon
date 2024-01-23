part of 'weather_bloc.dart';

class WeatherState {
  final Status status; 
 final WeatherEntities weatherEntities;
  WeatherState({
    required this.status,
    required this.weatherEntities,
  });

  

  WeatherState copyWith({
    Status? status,
    WeatherEntities? weatherEntities,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weatherEntities: weatherEntities ?? this.weatherEntities,
    );
  }

  @override
  String toString() => 'WeatherState(status: $status, weatherEntities: $weatherEntities)';

  @override
  bool operator ==(covariant WeatherState other) {
    if (identical(this, other)) return true;
  
    return 
      other.status == status &&
      other.weatherEntities == weatherEntities;
  }

  @override
  int get hashCode => status.hashCode ^ weatherEntities.hashCode;
}




enum Status{
  pure, loading, succses, failure
}