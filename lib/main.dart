import 'package:example_register/register_page.dart';
import 'package:flutter/material.dart';

import 'example_colurow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ExampleColRowPage(),
    );
  }
}
