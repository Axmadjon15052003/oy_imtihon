
import 'package:flutter/material.dart';
import 'package:oy_imtihon/core/injector/injector.dart';
import 'package:oy_imtihon/core/usecase/usecase.dart';
import 'package:oy_imtihon/features/weather/data/data_source/remote.dart';
import 'package:oy_imtihon/features/weather/data/repository/repository.dart';
import 'package:oy_imtihon/features/weather/domain/usecase/usecase.dart';
import 'package:oy_imtihon/features/weather/presentation/weather_screen.dart';

void main() async {
  await servisInjektor();
  WidgetsFlutterBinding.ensureInitialized();
  final response = await GetWeatherUsecase(
    weatherRepositoryImpl: WeatherRepositoryImpl(
      weatherDataSource: WeatherDataSource(),
    ),
  );
  final data = await response.call(NoParams());

      
 
 // runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}
