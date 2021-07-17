// GENERATED CODE - DO NOT MODIFY BY HAND

part of current;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Current> _$currentSerializer = new _$CurrentSerializer();

class _$CurrentSerializer implements StructuredSerializer<Current> {
  @override
  final Iterable<Type> types = const [Current, _$Current];
  @override
  final String wireName = 'Current';

  @override
  Iterable<Object?> serialize(Serializers serializers, Current object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feelsLike, specifiedType: const FullType(double)),
      'weather',
      serializers.serialize(object.weather, specifiedType: const FullType(BuiltList, const [const FullType(Weather)])),
    ];

    return result;
  }

  @override
  Current deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Weather)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Current extends Current {
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final BuiltList<Weather> weather;

  factory _$Current([void Function(CurrentBuilder)? updates]) => (new CurrentBuilder()..update(updates)).build();

  _$Current._({required this.temp, required this.feelsLike, required this.weather}) : super._() {
    BuiltValueNullFieldError.checkNotNull(temp, 'Current', 'temp');
    BuiltValueNullFieldError.checkNotNull(feelsLike, 'Current', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(weather, 'Current', 'weather');
  }

  @override
  Current rebuild(void Function(CurrentBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CurrentBuilder toBuilder() => new CurrentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Current && temp == other.temp && feelsLike == other.feelsLike && weather == other.weather;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, temp.hashCode), feelsLike.hashCode), weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Current')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('weather', weather))
        .toString();
  }
}

class CurrentBuilder implements Builder<Current, CurrentBuilder> {
  _$Current? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather => _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  CurrentBuilder();

  CurrentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _weather = $v.weather.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Current other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Current;
  }

  @override
  void update(void Function(CurrentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Current build() {
    _$Current _$result;
    try {
      _$result = _$v ??
          new _$Current._(
              temp: BuiltValueNullFieldError.checkNotNull(temp, 'Current', 'temp'),
              feelsLike: BuiltValueNullFieldError.checkNotNull(feelsLike, 'Current', 'feelsLike'),
              weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Current', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
