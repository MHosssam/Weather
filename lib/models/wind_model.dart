class WindModel {
  final double? speed;
  final int? deg;

  WindModel({
    this.speed,
    this.deg,
  });

  Map<String, dynamic> toMap() {
    return {
      'speed': speed,
      'deg': deg,
    };
  }

  factory WindModel.fromJson({required Map<String, dynamic> map}) {
    return WindModel(
      speed: double.parse(map['speed'].toString()),
      deg: map['deg'],
    );
  }
}
