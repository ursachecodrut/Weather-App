// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OpenWeather> _$openWeatherSerializer = new _$OpenWeatherSerializer();

class _$OpenWeatherSerializer implements StructuredSerializer<OpenWeather> {
  @override
  final Iterable<Type> types = const [OpenWeather, _$OpenWeather];
  @override
  final String wireName = 'OpenWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, OpenWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'current',
      serializers.serialize(object.current, specifiedType: const FullType(Current)),
    ];

    return result;
  }

  @override
  OpenWeather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OpenWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'current':
          result.current.replace(serializers.deserialize(value, specifiedType: const FullType(Current))! as Current);
          break;
      }
    }

    return result.build();
  }
}

class _$OpenWeather extends OpenWeather {
  @override
  final Current current;

  factory _$OpenWeather([void Function(OpenWeatherBuilder)? updates]) =>
      (new OpenWeatherBuilder()..update(updates)).build();

  _$OpenWeather._({required this.current}) : super._() {
    BuiltValueNullFieldError.checkNotNull(current, 'OpenWeather', 'current');
  }

  @override
  OpenWeather rebuild(void Function(OpenWeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  OpenWeatherBuilder toBuilder() => new OpenWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpenWeather && current == other.current;
  }

  @override
  int get hashCode {
    return $jf($jc(0, current.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OpenWeather')..add('current', current)).toString();
  }
}

class OpenWeatherBuilder implements Builder<OpenWeather, OpenWeatherBuilder> {
  _$OpenWeather? _$v;

  CurrentBuilder? _current;
  CurrentBuilder get current => _$this._current ??= new CurrentBuilder();
  set current(CurrentBuilder? current) => _$this._current = current;

  OpenWeatherBuilder();

  OpenWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpenWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OpenWeather;
  }

  @override
  void update(void Function(OpenWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OpenWeather build() {
    _$OpenWeather _$result;
    try {
      _$result = _$v ?? new _$OpenWeather._(current: current.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        current.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('OpenWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
