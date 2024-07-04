import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rentnow/main.dart';
import '../widgets/input_decoration.dart';
import 'package:rentnow/pages/registerPage.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signInWithGoogle() async {
  WidgetsFlutterBinding.ensureInitialized();
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  final GoogleSignInAuthentication? googleAuth =
      await googleUser!.authentication;
  final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth!.accessToken, idToken: googleAuth.idToken);

  return await FirebaseAuth.instance.signInWithCredential(credential);
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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
                  const Center(
                    child: (Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Nunito',
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
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

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.4),
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
                        controller: email,
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        keyboardType:
                            TextInputType.emailAddress, //@ en el teclado
                        decoration: InputDecoration(
                          fillColor: const Color(0xff4A4A4A),
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13, 
                          ),
                          labelText: 'Correo electronico',
                          labelStyle: const TextStyle(
                            color: Color(0xff999999)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: password,
                        obscureText: isObscure,
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: const Color(0xff4A4A4A),
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13, 
                          ),
                          labelText: 'Contraseña',
                          labelStyle: const TextStyle(
                            color: Color(0xff999999)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                                isObscure ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            })
                        ),
                      ),
                      const SizedBox(height: 20),
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
                            'Iniciar sesión',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Nunito'),
                          ),
                          onPressed: () {
                            login();
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Continua con:',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 170,
                                  height: 50,
                                  child: SignInButton(
                                    Buttons.Google,
                                    mini: false,
                                    onPressed: () async {
                                      var user = await signInWithGoogle();
                                      if (user.user != null) {
                                        // ignore: use_build_context_synchronously
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const HomePage()),
                                            (route) => false);
                                      }
                                    },
                                  )),
                            ],
                          ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
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

  void login() async {
    try {
      var signup = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => HomePage()), (route) => false);
    } catch (e) {
      print(e);
    }
  }
}
