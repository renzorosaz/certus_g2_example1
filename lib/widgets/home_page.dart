import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? fullname;

  @override
  void initState() {
    validarPreferenciasUser();
    super.initState();
  }

  Future<void> validarPreferenciasUser() async {
    final prefs = await SharedPreferences.getInstance();
    fullname = prefs.getString('fullname');
    print(fullname);
  }

  //TAREA SHARED PREFERENCES: public
  // MOSTRAR EL FULLNAME EN MAINDRAWER

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
