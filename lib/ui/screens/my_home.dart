import 'package:flutter/material.dart';
import 'package:flutter_estados3/blocs/counter_table_bloc.dart';
import 'package:flutter_estados3/ui/widgets/table_list_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final CounterTableBloc counterTableBloc = CounterTableBloc();

  @override
  void initState(){
    super.initState();
    counterTableBloc.valor();
  }

  @override
  void dispose(){
    counterTableBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: (){
                counterTableBloc.valorRestar();
              },
              icon: Icon(Icons.remove),
            ),
            Text("Mesas"),
            IconButton(
              onPressed: (){
                counterTableBloc.valorAgregar();
              },
              icon: Icon(Icons.add_box)
            )
          ],
        ),
      ),
      body: TableWidget(counterTableBloc: counterTableBloc),
    );
  }
}


