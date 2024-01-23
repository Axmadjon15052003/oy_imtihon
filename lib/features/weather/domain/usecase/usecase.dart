

import 'package:oy_imtihon/core/either/either.dart';
import 'package:oy_imtihon/core/failure/failure.dart';
import 'package:oy_imtihon/core/usecase/usecase.dart';
import 'package:oy_imtihon/features/weather/data/repository/repository.dart';
import 'package:oy_imtihon/features/weather/domain/entities/entities.dart';

class GetWeatherUsecase implements UseCase<WeatherEntities, NoParams> {
  final WeatherRepositoryImpl _weatherRepositoryImpl; 
  GetWeatherUsecase({required WeatherRepositoryImpl weatherRepositoryImpl}): _weatherRepositoryImpl = weatherRepositoryImpl;
  @override
  Future<Either<Failure, WeatherEntities>> call(NoParams params)async {
    return await _weatherRepositoryImpl.getWeather();
    
  }
  
}