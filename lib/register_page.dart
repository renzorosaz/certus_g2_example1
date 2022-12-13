import 'package:example_register/widgets/list/list_button_social_media.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //BRINDA SEGURIDAD A LOS WIDGETS  ( PARA QUE SE MANTENGA EN UNA ZONA SEGURA)
        child: Center(
          child: Column(
            children: [
              Column(children: [
                SizedBox(height: 30),
                titleRegister(),
                SizedBox(height: 24),
                underTitleRegister(),
                SizedBox(height: 24),
                ListButtonSocialMedia(),
                SizedBox(height: 24),
                subUnderTitleRegister(),
              ]),
              SizedBox(height: 35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Full Name"),
                  SizedBox(height: 10),
                  Container(
                      width: 350,
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: fullNameController,
                        decoration: InputDecoration(
                            hintText: "Enter your fullname",
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100)),
                            hintStyle: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                      )),
                  SizedBox(height: 20),
                  Text("Email"),
                  SizedBox(height: 10),
                  Container(
                      width: 350,
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100)),
                            hintStyle: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                      )),
                  SizedBox(height: 20),
                  Text("Password"),
                  SizedBox(height: 10),
                  Container(
                      width: 350,
                      height: 53,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100)),
                            hintStyle: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text subUnderTitleRegister() {
    return Text("o register with email",
        style: GoogleFonts.nunito(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey));
  }

  Widget underTitleRegister() {
    return Text("Register to continue",
        style: GoogleFonts.nunito(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey));
  }

  Widget titleRegister() {
    return Text("Register",
        style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w500));
  }
}
