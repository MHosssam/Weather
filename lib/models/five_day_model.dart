class FiveDayModel {
  final String? dateTime;
  final int? temp;

  FiveDayModel({
    this.dateTime,
    this.temp,
  });

  Map<String, dynamic> toMap() {
    return {
      'dateTime': dateTime,
      'temp': temp,
    };
  }

  factory FiveDayModel.fromJson({required Map<String, dynamic> map}) {
    var f = map['dt_txt'].split(' ')[0].split('-')[2];
    var l = map['dt_txt'].split(' ')[1].split(':')[0];

    return FiveDayModel(
      dateTime: '$f-$l',
      temp: (double.parse(map['main']['temp'].toString()) - 273.15).round(),
    );
  }
}
