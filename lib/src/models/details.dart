part of models;

abstract class Details implements Built<Details, DetailsBuilder> {
  factory Details([void Function(DetailsBuilder b) updates]) = _$Details;

  factory Details.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Details._();

  double get temp;

  double get celsiusTemp => temp - 274.15;

  @BuiltValueField(wireName: 'feels_like')
  double get feelsLike;

  double get celsiusFeelsLike => feelsLike - 274.15;

  double get humidity;

  @BuiltValueField(wireName: 'wind_speed')
  double get windSpeed;

  double get pressure;

  double get uvi;

  BuiltList<Weather> get weather;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Details> get serializer => _$detailsSerializer;
}
