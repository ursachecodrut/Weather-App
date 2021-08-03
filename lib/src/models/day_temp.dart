part of models;

abstract class DayTemp implements Built<DayTemp, DayTempBuilder> {
  factory DayTemp([void Function(DayTempBuilder b) updates]) = _$DayTemp;

  factory DayTemp.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  DayTemp._();

  double get day;

  double get celsiusDay => day - 274.15;

  double get night;

  double get celsiusNight => night - 274.15;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<DayTemp> get serializer => _$dayTempSerializer;
}
