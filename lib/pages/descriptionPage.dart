import 'dart:io';
import 'package:rentnow/main.dart';
import 'package:rentnow/pages/loginPage.dart';
import 'package:rentnow/pages/nuevo.dart';

import'../widgets/formulario_reserva.dart';
import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';


class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      title: const Text('Realizar Reserva', style: const TextStyle(color: Color.fromARGB(255, 29, 29, 29)),),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(78, 0, 0, 0),),
            tooltip: 'Show Snackbar',
            onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomePage()));
            },
          );
          },
        ),
      ),
      body: Stack(children: [
        Container(
          color: Colors.red,
          width: double.infinity,
          height: size.height * 0.4,
          child: const Image(
                image: AssetImage('assets/img/panoramica.jpg'),
                fit: BoxFit.fill,
              ),
        ),
        descriptionForm(context),
      ]),
    );
  }

  SingleChildScrollView descriptionForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.4),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget> [
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.63,
                            child: const Text('Apartamento en arrendamiento',
                            textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Nunito',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            children: [
                              MaterialButton(
                                minWidth: 20,
                                height: 25,
                                child: const Image(
                                  width: 30,
                                  height: 30,
                                  image: AssetImage('assets/img/vista-360.png'),
                                  color: Colors.orange,
                                ),
                                  // child: const Icon(
                                  //   Icons.camera_alt_rounded,
                                  //   size: 25, 
                                  // ),
                                onPressed: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const MyWidget()));
                                }
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10, top: 0, bottom: 0, right: 5),
                                width: 60,
                                height: 25,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  gradient: LinearGradient(
                                      colors: [Color(0xffF8A170), Color(0xffFFCD61)],
                                      begin: FractionalOffset(0.0, 1.5),
                                      end: FractionalOffset(1.5, 0.0),
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.clamp),
                                ),
                                child: Row(
                                  children: const <Widget> [
                                    Text('4.5',
                                      textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ], 
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: const <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('Descripción',
                                textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38,
                                  ),
                                ),
                            ),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                            textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                color: Colors.black38,
                              ),
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(top: 0, bottom: 20, right: 20, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      Row(
                        children: <Widget> [
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.orange[50],
                            child: const Icon(
                              Icons.location_pin,
                              size: 25,
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Ubicación',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: <Widget> [
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.orange[50],
                            child: const Icon(
                              Icons.accessibility,
                              size: 25,
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Distancia',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                            width: size.width * 0.75,
                            child: const Text('Contacta al anfitrión',
                            textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text('¿Tienes preguntas o necesitas algo relacionado con tu reserva?',
                            textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: <Widget> [
                              Container(
                                width: 40,
                                height: 40,
                                color: Colors.orange[50],
                                child: const Icon(
                                  Icons.whatsapp,
                                  size: 25,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              const Text('Ubicación',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: <Widget> [
                              Container(
                                width: 40,
                                height: 40,
                                color: Colors.orange[50],
                                child: const Icon(
                                  Icons.phone,
                                  size: 25,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              const Text('Ubicación',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: <Widget> [
                              Container(
                                width: 40,
                                height: 40,
                                color: Colors.orange[50],
                                child: const Icon(
                                  Icons.email_outlined,
                                  size: 25,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              const Text('Ubicación',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: size.width * 0.8,
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
                      child: const Text('Reserva', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Nunito'
                        ),
                      ),
                      onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const FormPage()));
                      },
                    ),
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

