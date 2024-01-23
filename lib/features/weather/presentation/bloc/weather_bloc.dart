import 'package:bloc/bloc.dart';

import '../../domain/entities/entities.dart';

part 'weather_event.dart';
part 'weather_state.dart';


class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherState(status: Status.pure, weatherEntities:
  WeatherEntities(name: '', country: '', windSpeed: 0, humidity: 0, cloud: 0, temp: 0, condition: '') )) {

    on<StartedEvant>((event, emit) {

    
    });
  }
}
