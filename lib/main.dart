import 'package:bloc_access_navigation_example/bloc/cubit/counter_cubit.dart';
import 'package:bloc_access_navigation_example/view/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // ________ This is the example of Globally Bloc Provider ________

    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Bloc Access Navigation',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
