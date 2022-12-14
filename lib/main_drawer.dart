import 'package:example_register/utils/fonts.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://images5.alphacoders.com/962/962466.jpg")),
                SizedBox(height: 5),
                Text("Sin nombre", style: APTextStyle(context).subTitleDrawer),
                SizedBox(height: 5),
                Text("Sin profesión",
                    style: APTextStyle(context).subUnderTitleDrawer)
              ],
            ))
      ],
    );
  }
}
