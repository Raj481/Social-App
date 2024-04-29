import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/logic/bloc_observer/app_bloc_observer.dart';
import 'package:socialapp/views/app.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const App());
}
