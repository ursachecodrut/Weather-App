// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<OpenWeather> _$openWeatherSerializer = new _$OpenWeatherSerializer();
Serializer<Current> _$currentSerializer = new _$CurrentSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.location;
    if (value != null) {
      result..add('location')..add(serializers.serialize(value, specifiedType: const FullType(Location)));
    }
    value = object.weather;
    if (value != null) {
      result..add('weather')..add(serializers.serialize(value, specifiedType: const FullType(OpenWeather)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value, specifiedType: const FullType(Location))! as Location);
          break;
        case 'weather':
          result.weather
              .replace(serializers.deserialize(value, specifiedType: const FullType(OpenWeather))! as OpenWeather);
          break;
      }
    }

    return result.build();
  }
}

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

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description, specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'main':
          result.main = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final Location? location;
  @override
  final OpenWeather? weather;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.location, this.weather}) : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && location == other.location && weather == other.weather;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')..add('location', location)..add('weather', weather)).toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  OpenWeatherBuilder? _weather;
  OpenWeatherBuilder get weather => _$this._weather ??= new OpenWeatherBuilder();
  set weather(OpenWeatherBuilder? weather) => _$this._weather = weather;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location?.toBuilder();
      _weather = $v.weather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(location: _location?.build(), weather: _weather?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'weather';
        _weather?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
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

class _$Weather extends Weather {
  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$Weather([void Function(WeatherBuilder)? updates]) => (new WeatherBuilder()..update(updates)).build();

  _$Weather._({required this.id, required this.main, required this.description, required this.icon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Weather', 'id');
    BuiltValueNullFieldError.checkNotNull(main, 'Weather', 'main');
    BuiltValueNullFieldError.checkNotNull(description, 'Weather', 'description');
    BuiltValueNullFieldError.checkNotNull(icon, 'Weather', 'icon');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode), icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Weather', 'id'),
            main: BuiltValueNullFieldError.checkNotNull(main, 'Weather', 'main'),
            description: BuiltValueNullFieldError.checkNotNull(description, 'Weather', 'description'),
            icon: BuiltValueNullFieldError.checkNotNull(icon, 'Weather', 'icon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
