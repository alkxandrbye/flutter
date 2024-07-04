import 'package:flutter/material.dart';
import 'package:rentnow/main.dart';
import '../widgets/container_img.dart';
import '../widgets/input_decoration.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color(0xff393939),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: size.height * 0.45,
              child: Stack(
                children: [
                  Image(
                    image: const AssetImage(
                      'assets/img/fondo.jpg',
                    ),
                    fit: BoxFit.cover,
                    color: Colors.black54,
                    colorBlendMode: BlendMode.darken,
                    width: size.width,
                    height: size.height * 0.45,
                  ),
                  SafeArea(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 60),
                        child: (const Text(
                          'Registro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Nunito',
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Image(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: size.height * 0.1,
                  image: const AssetImage('assets/img/logo.png'),
                ),
              ),
            ),
            loginForm(context),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;

    void signup() async {
      try {
        var signup = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email.text.trim(), password: password.text.trim());
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => HomePage()), (route) => false);
      } catch (e) {
        print(e);
      }
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.25),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0xff393939),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white10,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ]),
            child: Column(
              children: [
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        keyboardType:
                            TextInputType.emailAddress, //@ en el teclado
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Nombres',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Apellidos',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: email,
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Correo electrónico',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Número de celular',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Dirección',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: password,
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Contraseña',
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                              colors: [Color(0xffF8A170), Color(0xffFFCD61)],
                              begin: FractionalOffset(0.0, 1.5),
                              end: FractionalOffset(1.5, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        child: MaterialButton(
                          child: const Text(
                            'Registrarse',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Nunito'),
                          ),
                          onPressed: () {
                            signup();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
