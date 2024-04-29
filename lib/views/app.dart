
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import custom package
import 'splash/splash_screen.dart';
import '../logic/bloc/splash_controller.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => SplashController(0) )
        ],
        child: MaterialApp(
          title: 'Social App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        )
    );
  }
}
