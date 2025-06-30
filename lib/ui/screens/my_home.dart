import 'package:flutter/material.dart';
import 'package:flutter_estados3/ui/widgets/table_list_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return TableWidget();
  }
}


