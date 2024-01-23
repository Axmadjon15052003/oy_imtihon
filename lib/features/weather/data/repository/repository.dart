

import 'package:oy_imtihon/core/either/either.dart';
import 'package:oy_imtihon/core/failure/failure.dart';
import 'package:oy_imtihon/features/weather/data/data_source/remote.dart';
import 'package:oy_imtihon/features/weather/domain/entities/entities.dart';
import 'package:oy_imtihon/features/weather/domain/repository/repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource _weatherDataSource; 
  WeatherRepositoryImpl({required WeatherDataSource weatherDataSource} ): _weatherDataSource = weatherDataSource;
  @override
  Future<Either<Failure, WeatherEntities>> getWeather()async { 
    try {
      final data = await _weatherDataSource.getWeather();
      return Right(data);

      
    } catch (e) {
      return Left(ServerFailure());
      
    }
    
  }
  
}