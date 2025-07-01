import 'package:flutter/material.dart';
import 'package:flutter_estados3/blocs/counter_table_bloc.dart';
import 'package:flutter_estados3/main.dart';
import 'package:flutter_estados3/ui/widgets/table_list_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.counterTableBloc});
  final CounterTableBloc counterTableBloc;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return TableWidget(counterTableBloc: counterTableBloc);
  }
}


