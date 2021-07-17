// GENERATED CODE - DO NOT MODIFY BY HAND

part of location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final String status;
  @override
  final String country;
  @override
  final String city;
  @override
  final double lat;
  @override
  final double lon;

  factory _$Location([void Function(LocationBuilder)? updates]) => (new LocationBuilder()..update(updates)).build();

  _$Location._({required this.status, required this.country, required this.city, required this.lat, required this.lon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'Location', 'status');
    BuiltValueNullFieldError.checkNotNull(country, 'Location', 'country');
    BuiltValueNullFieldError.checkNotNull(city, 'Location', 'city');
    BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        status == other.status &&
        country == other.country &&
        city == other.city &&
        lat == other.lat &&
        lon == other.lon;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, status.hashCode), country.hashCode), city.hashCode), lat.hashCode), lon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('status', status)
          ..add('country', country)
          ..add('city', city)
          ..add('lat', lat)
          ..add('lon', lon))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _country = $v.country;
      _city = $v.city;
      _lat = $v.lat;
      _lon = $v.lon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            status: BuiltValueNullFieldError.checkNotNull(status, 'Location', 'status'),
            country: BuiltValueNullFieldError.checkNotNull(country, 'Location', 'country'),
            city: BuiltValueNullFieldError.checkNotNull(city, 'Location', 'city'),
            lat: BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
