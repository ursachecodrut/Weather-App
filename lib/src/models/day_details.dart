part of models;

abstract class DayDetails implements Built<DayDetails, DayDetailsBuilder> {
  factory DayDetails([void Function(DayDetailsBuilder b) updates]) = _$DayDetails;

  factory DayDetails.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  DayDetails._();

  BuiltList<Weather> get weather;

  DayTemp get temp;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<DayDetails> get serializer => _$dayDetailsSerializer;
}
