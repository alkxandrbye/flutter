import 'package:flutter/material.dart';

import '../BNavigation/page1.dart';
import '../main.dart';

class Reservado extends StatelessWidget {
  const Reservado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Reserva(context),
    );
  }
    SingleChildScrollView Reserva(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.10),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(224, 156, 156, 156),
                  blurRadius: 5,
                  offset: Offset(0, 5),
                  ),
              ]
            ),
            child: Column(
              children: [
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      const Text('¡Reservacion completa!', 
                        style: TextStyle(
                           color: Color.fromARGB(255, 44, 44, 44),
                           fontSize: 28,
                           fontFamily: 'Nunito',
                        ),
                      ),
                      const SizedBox(height: 40),

                      Stack(children: [
                        Container(
                          color: Colors.red,
                          width: double.infinity,
                          height: size.height * 0.3,
                          child: const Image(
                            image: AssetImage('assets/img/panoramica.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                      const SizedBox(height: 20),
                      const Text('Descripción del lugar', 
                        style: TextStyle(
                           color: Color.fromARGB(164, 44, 44, 44),
                           fontSize: 20,
                           fontFamily: 'Nunito',
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 
                        style: TextStyle(
                           color: Color.fromARGB(164, 44, 44, 44),
                        ),
                      ),
                      const SizedBox(height: 3),

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
                            tileMode: TileMode.clamp
                          ),
                        ),
                        child: MaterialButton(
                          child: const Text('Aceptar', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Nunito'
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomePage()));
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
