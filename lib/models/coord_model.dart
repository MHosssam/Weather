class CoordModel {
  final double? lon;
  final double? lat;

  CoordModel({
    this.lon,
    this.lat,
  });

  Map<String, dynamic> toMap() {
    return {
      'lon': lon,
      'lat': lat,
    };
  }

  factory CoordModel.fromJson({required Map<String, dynamic> map}) {
    return CoordModel(
      lon: map['lon'],
      lat: map['lat'],
    );
  }
}
