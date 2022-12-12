import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //BRINDA SEGURIDAD A LOS WIDGETS  ( PARA QUE SE MANTENGA EN UNA ZONA SEGURA)
        child: Center(
          child: Column(children: [
            SizedBox(height: 30),
            Text("Register",
                style: GoogleFonts.nunito(
                    fontSize: 25, fontWeight: FontWeight.w500)),
            SizedBox(height: 24),
            Text("Register to continue",
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            SizedBox(height: 24),
            Row(
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
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  child:
                      Icon(FontAwesomeIcons.google, color: Colors.yellow[700]),
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(FontAwesomeIcons.instagram,
                        color: Colors.red[300])),
              ],
            ),
            SizedBox(height: 24),
            Text("o register with email",
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
          ]),
        ),
      ),
    );
  }
}
