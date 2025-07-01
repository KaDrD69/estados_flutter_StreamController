import 'package:flutter/material.dart';
import 'package:flutter_estados3/blocs/counter_table_bloc.dart';
import 'package:flutter_estados3/ui/screens/my_home.dart';

void main() {
  runApp(const MainApp());
}

CounterTableBloc counterTableBloc = CounterTableBloc();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Mesas")),
        body: MyHome(counterTableBloc: counterTableBloc),
      ),
    );
  }
}
