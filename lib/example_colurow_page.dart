import 'package:flutter/material.dart';

class ExampleColRowPage extends StatelessWidget {
  const ExampleColRowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
            "https://www.pixelstalk.net/wp-content/uploads/2016/12/Beautiful-Landscape-Background-Full-HD.jpg"),
        SizedBox(height: 30),
        textPlacesPoints(),
        SizedBox(height: 60),
        buttonsCallRouteShare(),
        SizedBox(height: 40),
        //CONTAINER
        //PADDING
        Container(
          width: 360,
          child: Text(
            "Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet",
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ));
  }

  Widget buttonsCallRouteShare() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.call, color: Colors.blue),
            SizedBox(height: 10),
            Text(
              "CALL",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        Column(
          children: [
            Icon(Icons.route, color: Colors.blue),
            SizedBox(height: 10),
            Text("ROUTE", style: TextStyle(color: Colors.blue)),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share, color: Colors.blue),
            SizedBox(height: 10),
            Text("SHARE", style: TextStyle(color: Colors.blue)),
          ],
        ),
      ],
    );
  }

  Widget textPlacesPoints() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Oeschinen Lake Campground",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("Kandersteg, Switzerland"),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Icon(Icons.stars, color: Colors.red),
            SizedBox(width: 4),
            Text("41")
          ],
        )
      ],
    ));
  }
}
