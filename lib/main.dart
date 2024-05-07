import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/bloc_observer/app_bloc_observer.dart';
import 'screens/app.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const App());
}
