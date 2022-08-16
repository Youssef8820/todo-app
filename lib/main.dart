// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/layout/home_layout.dart';
import 'package:todo/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primaryColorDark: Colors.black,
          primarySwatch: Colors.teal,
        ),
      ),
    );
  }
}
