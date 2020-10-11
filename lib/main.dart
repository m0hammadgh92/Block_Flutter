import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/api/MockRepo.dart';
import 'package:flutter_bloc_tutorial/pages/WeatherSearchPage.dart';

import 'bloc/weather_bloc.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherBloc(MockRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}