// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetLocationTearOff {
  const _$GetLocationTearOff();

  GetLocationStart call() {
    return const GetLocationStart();
  }

  GetLocationSuccessful successful(Location location) {
    return GetLocationSuccessful(
      location,
    );
  }

  GetLocationError error(Object error, StackTrace stackTrace) {
    return GetLocationError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetLocation = _$GetLocationTearOff();

/// @nodoc
mixin _$GetLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationCopyWith<$Res> {
  factory $GetLocationCopyWith(GetLocation value, $Res Function(GetLocation) then) = _$GetLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationCopyWithImpl<$Res> implements $GetLocationCopyWith<$Res> {
  _$GetLocationCopyWithImpl(this._value, this._then);

  final GetLocation _value;
  // ignore: unused_field
  final $Res Function(GetLocation) _then;
}

/// @nodoc
abstract class $GetLocationStartCopyWith<$Res> {
  factory $GetLocationStartCopyWith(GetLocationStart value, $Res Function(GetLocationStart) then) =
      _$GetLocationStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationStartCopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationStartCopyWith<$Res> {
  _$GetLocationStartCopyWithImpl(GetLocationStart _value, $Res Function(GetLocationStart) _then)
      : super(_value, (v) => _then(v as GetLocationStart));

  @override
  GetLocationStart get _value => super._value as GetLocationStart;
}

/// @nodoc

class _$GetLocationStart implements GetLocationStart {
  const _$GetLocationStart();

  @override
  String toString() {
    return 'GetLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetLocationStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLocationStart implements GetLocation {
  const factory GetLocationStart() = _$GetLocationStart;
}

/// @nodoc
abstract class $GetLocationSuccessfulCopyWith<$Res> {
  factory $GetLocationSuccessfulCopyWith(GetLocationSuccessful value, $Res Function(GetLocationSuccessful) then) =
      _$GetLocationSuccessfulCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class _$GetLocationSuccessfulCopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationSuccessfulCopyWith<$Res> {
  _$GetLocationSuccessfulCopyWithImpl(GetLocationSuccessful _value, $Res Function(GetLocationSuccessful) _then)
      : super(_value, (v) => _then(v as GetLocationSuccessful));

  @override
  GetLocationSuccessful get _value => super._value as GetLocationSuccessful;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(GetLocationSuccessful(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$GetLocationSuccessful implements GetLocationSuccessful {
  const _$GetLocationSuccessful(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'GetLocation.successful(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationSuccessful &&
            (identical(other.location, location) || const DeepCollectionEquality().equals(other.location, location)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $GetLocationSuccessfulCopyWith<GetLocationSuccessful> get copyWith =>
      _$GetLocationSuccessfulCopyWithImpl<GetLocationSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLocationSuccessful implements GetLocation {
  const factory GetLocationSuccessful(Location location) = _$GetLocationSuccessful;

  Location get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLocationSuccessfulCopyWith<GetLocationSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationErrorCopyWith<$Res> {
  factory $GetLocationErrorCopyWith(GetLocationError value, $Res Function(GetLocationError) then) =
      _$GetLocationErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetLocationErrorCopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationErrorCopyWith<$Res> {
  _$GetLocationErrorCopyWithImpl(GetLocationError _value, $Res Function(GetLocationError) _then)
      : super(_value, (v) => _then(v as GetLocationError));

  @override
  GetLocationError get _value => super._value as GetLocationError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetLocationError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetLocationError implements GetLocationError {
  const _$GetLocationError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetLocation.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetLocationErrorCopyWith<GetLocationError> get copyWith =>
      _$GetLocationErrorCopyWithImpl<GetLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocationError implements GetLocation, ErrorAction {
  const factory GetLocationError(Object error, StackTrace stackTrace) = _$GetLocationError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLocationErrorCopyWith<GetLocationError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetWeatherTearOff {
  const _$GetWeatherTearOff();

  GetWeatherStart call() {
    return const GetWeatherStart();
  }

  GetWeatherSuccessful successful(OpenWeather weather) {
    return GetWeatherSuccessful(
      weather,
    );
  }

  GetWeatherError error(Object error, StackTrace stackTrace) {
    return GetWeatherError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetWeather = _$GetWeatherTearOff();

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(OpenWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(OpenWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(GetWeather value, $Res Function(GetWeather) then) = _$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  final GetWeather _value;
  // ignore: unused_field
  final $Res Function(GetWeather) _then;
}

/// @nodoc
abstract class $GetWeatherStartCopyWith<$Res> {
  factory $GetWeatherStartCopyWith(GetWeatherStart value, $Res Function(GetWeatherStart) then) =
      _$GetWeatherStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherStartCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherStartCopyWith<$Res> {
  _$GetWeatherStartCopyWithImpl(GetWeatherStart _value, $Res Function(GetWeatherStart) _then)
      : super(_value, (v) => _then(v as GetWeatherStart));

  @override
  GetWeatherStart get _value => super._value as GetWeatherStart;
}

/// @nodoc

class _$GetWeatherStart implements GetWeatherStart {
  const _$GetWeatherStart();

  @override
  String toString() {
    return 'GetWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetWeatherStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(OpenWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(OpenWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart() = _$GetWeatherStart;
}

/// @nodoc
abstract class $GetWeatherSuccessfulCopyWith<$Res> {
  factory $GetWeatherSuccessfulCopyWith(GetWeatherSuccessful value, $Res Function(GetWeatherSuccessful) then) =
      _$GetWeatherSuccessfulCopyWithImpl<$Res>;
  $Res call({OpenWeather weather});
}

/// @nodoc
class _$GetWeatherSuccessfulCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherSuccessfulCopyWith<$Res> {
  _$GetWeatherSuccessfulCopyWithImpl(GetWeatherSuccessful _value, $Res Function(GetWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherSuccessful));

  @override
  GetWeatherSuccessful get _value => super._value as GetWeatherSuccessful;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(GetWeatherSuccessful(
      weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as OpenWeather,
    ));
  }
}

/// @nodoc

class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.weather);

  @override
  final OpenWeather weather;

  @override
  String toString() {
    return 'GetWeather.successful(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherSuccessful &&
            (identical(other.weather, weather) || const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @JsonKey(ignore: true)
  @override
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith =>
      _$GetWeatherSuccessfulCopyWithImpl<GetWeatherSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(OpenWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(OpenWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(OpenWeather weather) = _$GetWeatherSuccessful;

  OpenWeather get weather => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherErrorCopyWith<$Res> {
  factory $GetWeatherErrorCopyWith(GetWeatherError value, $Res Function(GetWeatherError) then) =
      _$GetWeatherErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetWeatherErrorCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherErrorCopyWith<$Res> {
  _$GetWeatherErrorCopyWithImpl(GetWeatherError _value, $Res Function(GetWeatherError) _then)
      : super(_value, (v) => _then(v as GetWeatherError));

  @override
  GetWeatherError get _value => super._value as GetWeatherError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetWeatherError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith =>
      _$GetWeatherErrorCopyWithImpl<GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(OpenWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(OpenWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather, ErrorAction {
  const factory GetWeatherError(Object error, StackTrace stackTrace) = _$GetWeatherError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith => throw _privateConstructorUsedError;
}
