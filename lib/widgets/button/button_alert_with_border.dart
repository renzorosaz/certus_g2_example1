import 'package:flutter/material.dart';

import '../../utils/fonts.dart';

class ButtonAlertWithBorder extends StatelessWidget {
  const ButtonAlertWithBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white),
        child: Center(
            child: Text("Cancelar",
                style: APTextStyle(context).subTitleRegister.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.blueAccent))));
  }
}
