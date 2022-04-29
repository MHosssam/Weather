import 'clouds_model.dart';
import 'coord_model.dart';
import 'main_weather_model.dart';
import 'sys_model.dart';
import 'weather_model.dart';
import 'wind_model.dart';

class CurrentWeatherModel {
  final CoordModel? coord;
  final List<WeatherModel>? weather;
  final String? base;
  final MainWeatherModel? main;
  final int? visibility;
  final WindModel? wind;
  final CloudsModel? clouds;
  final int? dt;
  final SysModel? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  CurrentWeatherModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  Map<String, dynamic> toMap() {
    return {
      'coord': coord,
      'weather': weather,
      'base': base,
      'main': main,
      'visibility': visibility,
      'wind': wind,
      'clouds': clouds,
      'dt': dt,
      'sys': sys,
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory CurrentWeatherModel.fromJson({required Map<String, dynamic> map}) {
    return CurrentWeatherModel(
      coord: CoordModel.fromJson(map: map['coord']),
      weather: (map['weather'] as List)
          .map((w) => WeatherModel.fromJson(map: w))
          .toList(),
      base: map['base'],
      main: MainWeatherModel.fromJson(map: map['main']),
      visibility: map['visibility'],
      wind: WindModel.fromJson(map: map['wind']),
      clouds: CloudsModel.fromJson(map: map['clouds']),
      dt: map['dt'],
      sys: SysModel.fromJson(map: map['sys']),
      timezone: map['timezone'],
      id: map['id'],
      name: map['name'],
      cod: map['cod'],
    );
  }
}
