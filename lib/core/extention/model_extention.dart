

import '../../features/weather/data/model/weather_model.dart';
import '../../features/weather/domain/entities/entities.dart';

extension ModelToEntities on WeatherModel {
  WeatherEntities get toEntities {
    return WeatherEntities(
      name: location!.name,
      country: location!.country,
      windSpeed: current!.wind_kph,
      humidity: current!.humidity,
      cloud: current!.cloud,
      temp: current!.temp_c,
      condition: current!.condition!.text,
    );
  }
}
