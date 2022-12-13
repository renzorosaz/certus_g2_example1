import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListButtonSocialMedia extends StatelessWidget {
  const ListButtonSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: Icon(Icons.facebook, color: Colors.blue)),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
          child: Icon(FontAwesomeIcons.google, color: Colors.yellow[700]),
        ),
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)),
            child: Icon(FontAwesomeIcons.instagram, color: Colors.red[300])),
      ],
    );
  }
}
