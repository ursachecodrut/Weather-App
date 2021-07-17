part of models;

abstract class Current implements Built<Current, CurrentBuilder> {
  factory Current([void Function(CurrentBuilder b) updates]) = _$Current;

  factory Current.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Current._();

  double get temp;

  @BuiltValueField(wireName: 'feels_like')
  double get feelsLike;

  BuiltList<Weather> get weather;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Current> get serializer => _$currentSerializer;
}
