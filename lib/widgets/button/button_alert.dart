import 'package:flutter/material.dart';

import '../../utils/fonts.dart';

class ButtonAlert extends StatelessWidget {
  void Function()? onTap;
  ButtonAlert({this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.blueAccent),
          child: Center(
              child: Text("Aceptar",
                  style: APTextStyle(context).subTitleRegister.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white)))),
    );
  }
}
