
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/utils/theme_res.dart';
// import custom package
import '../logic/theme/theme_bloc.dart';
import 'splash/splash_screen.dart';
import '../logic/bloc/splash_controller.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => SplashController(0) ),
          BlocProvider(create: (_) => ThemeBloc() )
        ],
        child: BlocBuilder<ThemeBloc, ThemeData>(
            builder: (_, state) {
              return MaterialApp(
                title: 'Social App',
                debugShowCheckedModeBanner: false,
                theme: state,
                home: const SplashScreen(),
              );
            })
    );
  }
}
