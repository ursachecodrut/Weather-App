part of actions;

@freezed
class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather() = GetWeatherStart;

  const factory GetWeather.successful(OpenWeather weather) = GetWeatherSuccessful;

  @Implements(ErrorAction)
  const factory GetWeather.error(Object error, StackTrace stackTrace) = GetWeatherError;
}
