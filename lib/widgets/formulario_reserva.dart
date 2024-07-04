import 'package:flutter/material.dart';
import 'package:rentnow/main.dart';
import 'package:rentnow/widgets/reservado.dart';
import '../pages/descriptionPage.dart';
import '../widgets/container_img_reserva.dart';
import '../widgets/input_decoration_reserva.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Color? backgroudColor;
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
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
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
          SizedBox(height: size.height * 0.0),
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
                      const Text('Llena este formulario para completar tu reserva:', 
                        style: TextStyle(
                           color: Color.fromARGB(255, 44, 44, 44),
                           fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress, //@ en el teclado
                        decoration: Input_Decoration.inputDecoration(
                          labelText:'Nombres',
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
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Número de Indentificación',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xff999999),
                        ),
                        autocorrect: false,
                        decoration: Input_Decoration.inputDecoration(
                          labelText: 'Correo Electrónico',
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
                          labelText: 'Mensaje',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('El arrendatario se pondra en contacto contigo después del envío de tu información.', 
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
                          child: const Text('Enviar', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Nunito'
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Reservado()));
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