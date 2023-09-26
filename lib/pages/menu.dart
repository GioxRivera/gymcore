import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final int initialIndex;
  const Menu({
    Key? key,
    required int this.initialIndex,
  }) : super(key: key);
  
  static const String routeName = '/menu';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}