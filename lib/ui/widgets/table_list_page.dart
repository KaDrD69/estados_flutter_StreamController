import 'package:flutter/material.dart';
import 'package:flutter_estados3/blocs/counter_table_bloc.dart';

class TableWidget extends StatelessWidget {
  final CounterTableBloc counterTableBloc;
  TableWidget({super.key, required this.counterTableBloc}){
    counterTableBloc.valor();
  }

  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
      stream: counterTableBloc.stream,
      initialData: 0,
      builder: (context, snapshot) {
        final itemCount = snapshot.data;
        return ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("Mesa $index"),
                subtitle: Text("Órdenes:"),
                onTap: () {},
                trailing: IconButton(
                  onPressed: (){
                   counterTableBloc.valorAgregar(); 
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
    );
  }
}