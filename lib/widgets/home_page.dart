import 'package:flutter/material.dart';

import '../main_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      drawer: Drawer(
        child: MainDrawer(),
      ),
    );
  }
}
