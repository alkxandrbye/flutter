import 'package:flutter/material.dart';
import 'package:rentnow/pages/loginPage.dart';
import '../pages/descriptionPage.dart';
import 'package:profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color(0xff393939),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
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
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 200.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/3011/3011270.png'),
                              radius: 80.0,
                            ),
                          ),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(214, 206, 84, 9),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                loginForm(context),
              ],
            ),
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.35),
                  const Text(
                    'User Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  const Text(
                    'Rol | Arrendatario',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                    child: ListView(
                      children: <Widget>[
                        const Card(
                          child: ListTile(
                            title: Text(
                              'Configuración',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.settings,
                            color: Colors.orange,
                            ),
                          ),
                        ),
                        const Card(
                          child: ListTile(
                            title: Text(
                              'Ayuda',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.help,
                            color: Colors.orange,
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: const Text(
                              'Cerrar sesión',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () async {
                                  await FirebaseAuth.instance.signOut();
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => LoginPage()));
                                },
                                icon: const Icon(Icons.logout,
                                color: Colors.orange,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
