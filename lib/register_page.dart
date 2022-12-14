import 'package:example_register/utils/fonts.dart';
import 'package:example_register/widgets/button/button_alert.dart';
import 'package:example_register/widgets/button/button_alert_with_border.dart';
import 'package:example_register/widgets/home_page.dart';
import 'package:example_register/widgets/list/list_button_social_media.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/user_model.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;
  //final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  Future<void> guardarReferenciaUsuario(String fullname) async {
    final prefs = await SharedPreferences.getInstance();
    //guardar el valor del nombre completo
    prefs.setString('fullname', fullname);
  }

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
              Form(
                autovalidateMode: AutovalidateMode.always,
                onChanged: () {
                  Form.of(primaryFocus!.context!)!.save();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    inputFullName(),
                    SizedBox(height: 20),
                    inputEmail(),
                    SizedBox(height: 20),
                    inputPassword()
                  ],
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () async {
                  UserModel user = UserModel("", "", "");
                  user.fullName = fullNameController.text;
                  user.email = emailController.text;
                  user.password = passwordController.text;

                  if (user.fullName.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Container(
                                child: Text("Ingrese su nombre completo")),
                          );
                        });
                  } else {
                    guardarReferenciaUsuario(user.fullName);
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return AlertDialog(
                            content: Container(
                              height: 200,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Text("¿Está seguro de registrarse?",
                                        style: APTextStyle(context)
                                            .titleAlertDialog),
                                    SizedBox(height: 10),
                                    Text("Tus datos son:"),
                                    SizedBox(height: 20),
                                    Column(children: [
                                      Row(
                                        children: [
                                          Text("Nombre Completo:"),
                                          Text(
                                            user.fullName,
                                            style: APTextStyle(context)
                                                .textGlobal
                                                .copyWith(fontSize: 19),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Email:"),
                                          Text(
                                            user.email,
                                            style: APTextStyle(context)
                                                .textGlobal
                                                .copyWith(fontSize: 19),
                                          )
                                        ],
                                      ),
                                    ]),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ButtonAlert(
                                          onTap: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage()));
                                          },
                                        ),
                                        ButtonAlertWithBorder(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  }
                },
                child: Container(
                  width: 350,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueAccent),
                  child: Center(
                      child: Text("Registrar",
                          style: APTextStyle(context)
                              .textGlobal
                              .copyWith(color: Colors.white, fontSize: 16))),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(children: [
                  Text("Alredy have an account?",
                      style: APTextStyle(context).subTitleRegister),
                  SizedBox(width: 5),
                  Text("Login",
                      style: APTextStyle(context)
                          .textGlobal
                          .copyWith(color: Colors.blueAccent, fontSize: 16))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget inputPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password",
            style: APTextStyle(context).textGlobal.copyWith(fontSize: 15)),
        SizedBox(height: 10),
        Container(
            width: 350,
            height: 55,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              obscureText: _isObscure,
              validator: (String? value) {
                return (value!.length < 8)
                    ? "Su contraseña debe tener 8 dígitos"
                    : null;
              },
              controller: passwordController,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      child: _isObscure
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  hintText: "Enter your password",
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                  hintStyle: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
            )),
      ],
    );
  }

  Widget inputEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email",
            style: APTextStyle(context).textGlobal.copyWith(fontSize: 15)),
        SizedBox(height: 10),
        Container(
            width: 350,
            height: 53,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              validator: (String? value) {
                return (!value!.contains('@')) ? "Not is a valid emial" : null;
              },
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                  hintStyle: APTextStyle(context)
                      .textGlobal
                      .copyWith(color: Colors.grey, fontSize: 15)),
            )),
      ],
    );
  }

  Widget inputFullName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name",
            style: APTextStyle(context).textGlobal.copyWith(fontSize: 15)),
        SizedBox(height: 10),
        Container(
            width: 350,
            height: 53,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              validator: (String? value) {
                return (value!.isEmpty) ? "No puede ser vacio" : null;
              },
              controller: fullNameController,
              decoration: InputDecoration(
                  hintText: "Enter your fullname",
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                  hintStyle: APTextStyle(context)
                      .textGlobal
                      .copyWith(color: Colors.grey, fontSize: 15)),
            )),
      ],
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


//TAREA : CONSTRUIR UNA PANTALLA DE LOGIN DE USUARIO( INICIAR SESIÓN)

// RECOMENDACIONES: 

//CREAR VARIABLES
//CREAR CONTROLADORES
//UTILIZAR TEXTFORMFIELDS
//VERIFICAR SI NUESTRO WIDGET LOGIN ES STATELESS O STATEFULL

//CREAR BOTON " INICIAR SESION"
  // MOSTRAR UNA ALERTA -  CON LAS VARIABLES UTILIZADAS