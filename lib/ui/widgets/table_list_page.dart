import 'package:flutter/material.dart';
import 'package:flutter_estados3/blocs/counter_table_bloc.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key, required this.counterTableBloc});
  final CounterTableBloc counterTableBloc;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: counterTableBloc.counter,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("Mesa $index"),
            subtitle: Text("Órdenes:"),
            onTap: () {},
            trailing: IconButton(
              onPressed: (){
                
              },
              icon: Icon(Icons.add)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
    );
  }
}