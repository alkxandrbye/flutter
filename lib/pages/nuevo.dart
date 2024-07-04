import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:panorama/panorama.dart';

import 'descriptionPage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
                            MaterialPageRoute(builder: (context) => const DescriptionPage()));
            },
          );
          },
        ),
      ),
    body:
    Container(
      child: Center(
        child: Panorama(
              animSpeed: 1.0,
              sensorControl: SensorControl.AbsoluteOrientation,
              child: const Image (
                image: AssetImage('assets/img/panoramica.jpg')),
            ),
      ),
    )
    );

  }
}