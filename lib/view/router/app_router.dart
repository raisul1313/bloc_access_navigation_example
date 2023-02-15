import 'package:bloc_access_navigation_example/bloc/cubit/counter_cubit.dart';
import 'package:bloc_access_navigation_example/view/screen/home_screen.dart';
import 'package:bloc_access_navigation_example/view/screen/second_screen.dart';
import 'package:bloc_access_navigation_example/view/screen/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(
                title: 'Flutter Bloc Access Navigation', color: Colors.purple));
      case '/second':
        return MaterialPageRoute(
            builder: (_) =>
                SecondScreen(title: 'Second Screen', color: Colors.green));

      case '/third':
        return MaterialPageRoute(
            builder: (_) =>
                ThirdScreen(title: 'Third Screen', color: Colors.orange));

      default:
        return null;
    }
  }

// Locally: when you want to provide the instance to A SINGLE SCREEN.
// Specifically: when you want to specifically provide the instance to 1 OR MORE SCREEN.
// Globally: when you want to provide the instance to ACROSS ALL OF YOUR SCREEN.

// ________ This is the example of Specifically ________

/* final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: HomeScreen(
                      title: 'Flutter Bloc Access Navigation',
                      color: Colors.purple),
                ));
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child:
                      SecondScreen(title: 'Second Screen', color: Colors.green),
                ));

      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child:
                      ThirdScreen(title: 'Third Screen', color: Colors.orange),
                ));

      default:
        return null;
    }
  }

  void dispose(){
    _counterCubit.close();
  }*/
}
