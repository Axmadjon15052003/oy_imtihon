
import 'package:dio/dio.dart';
import 'package:oy_imtihon/core/exception/exception.dart';
import 'package:oy_imtihon/core/extention/model_extention.dart';
import 'package:oy_imtihon/core/injector/injector.dart';
import 'package:oy_imtihon/features/weather/data/model/weather_model.dart';
import 'package:oy_imtihon/features/weather/domain/entities/entities.dart';

abstract class WeatherDataSource{
  Future<WeatherEntities> getWeather();
  factory WeatherDataSource()=> _WeatherDataSource();
}

class _WeatherDataSource  implements WeatherDataSource{
  @override
  Future<WeatherEntities> getWeather() async{
    try {
      final dio = servisLocator<Dio>();
      final response = await dio.get("http://api.weatherapi.com/v1/current.json?key=e76d154ceb2a4e05a2c62513241901&q=Tashkent&aqi=no");
      final data =  WeatherModel.fromJson(response.data);
      return data.toEntities;
      
    } catch (e) {
      throw ServerException(message: "Xatolik yuz berdi");
      
    }
  }
}