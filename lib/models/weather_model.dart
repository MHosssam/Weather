class WeatherModel {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  WeatherModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'main': main,
      'description': description,
      'icon': icon,
    };
  }

  factory WeatherModel.fromJson({required Map<String, dynamic> map}) {
    return WeatherModel(
        id: map['id'],
        main: map['main'],
        description: map['description'],
        icon: map['icon']);
  }
}
