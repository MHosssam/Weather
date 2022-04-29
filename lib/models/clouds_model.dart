class CloudsModel {
  final int? all;

  CloudsModel({
    this.all,
  });

  Map<String, dynamic> toMap() {
    return {
      'all': all,
    };
  }

  factory CloudsModel.fromJson({required Map<String, dynamic> map}) {
    return CloudsModel(
      all: map['all'],
    );
  }
}
