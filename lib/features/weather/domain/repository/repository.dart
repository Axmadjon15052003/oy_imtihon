
import 'package:oy_imtihon/core/either/either.dart';
import 'package:oy_imtihon/core/failure/failure.dart';
import 'package:oy_imtihon/features/weather/domain/entities/entities.dart';

abstract class WeatherRepository{ 
  Future<Either <Failure, WeatherEntities >> getWeather();
}