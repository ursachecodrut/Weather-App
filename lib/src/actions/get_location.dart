import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/location.dart';

part 'get_location.freezed.dart';

@freezed
class GetLocation with _$GetLocation implements AppAction {
  const factory GetLocation() = GetLocationStart;

  const factory GetLocation.successful(Location location) = GetLocationSuccessful;

  @Implements(ErrorAction)
  const factory GetLocation.error(Object error, StackTrace stackTrace) = GetLocationError;
}

// class GetLocation {
//   const GetLocation();
//
//   @override
//   String toString() {
//     return 'GetLocation{}';
//   }
// }
//
// class GetLocationSuccessful {
//   const GetLocationSuccessful(this.location);
//
//   final Location location;
//
//   @override
//   String toString() {
//     return 'GetLocationSuccessful{$location}';
//   }
// }
//
// class GetLocationError {
//   GetLocationError(this.error);
//
//   final dynamic error;
//
//   @override
//   String toString() {
//     return 'GetLocationError{error: $error}';
//   }
// }
