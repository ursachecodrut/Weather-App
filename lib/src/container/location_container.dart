import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/models/index.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Location?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Location?>(
      converter: (Store<AppState> store) => store.state.location,
      builder: builder,
    );
  }
}
