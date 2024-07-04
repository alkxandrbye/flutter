import 'package:flutter/material.dart';
import '../pages/descriptionPage.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                          margin: const EdgeInsets.only(bottom: 150),
                          child: (const Text(
                            'Tus favoritos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'Nunito',
                            ),
                          )),
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
          SizedBox(height: size.height * 0.2),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(horizontal: 5),
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
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black12,
                        padding: const EdgeInsets.all(5),
                        height: 120,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                  'https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9kZGZlMmZiMS0wNDc2LTNhOTgtODFmMC03OWRiMzM0ODBiZTkvODE0ZGI4ZGY5Y2Q1OTRkZTk0MWZmMmQ2MGEzMzQ2YjgxZDUwMWQ2MDJlZDQ2MjMzNzhmZmM5MWJlYjQwNGJmNC5qcGciLCJicmFuZCI6IlJFU0VNIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4NDAsImhlaWdodCI6NjMwLCJmaXQiOiJjb3ZlciJ9fX0=',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 20, left: 15),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Casa en arriendo',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Nunito',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: const <Widget>[
                                            Center(
                                              child: Icon(
                                                Icons.location_pin,
                                                size: 12,
                                                color: Colors.orange,
                                              ),
                                            ),
                                            Text(
                                              'Popayán - Cauca',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Nunito',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 50,
                              height: 100,
                              color: Colors.white10,
                              child: const Icon(
                                Icons.arrow_right,
                                size: 30,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.black12,
                        padding: const EdgeInsets.all(5),
                        height: 120,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2013/11/13/21/14/san-francisco-210230_960_720.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 20, left: 15),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Casa en venta',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Nunito',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: const <Widget>[
                                            Center(
                                              child: Icon(
                                                Icons.location_pin,
                                                size: 12,
                                                color: Colors.orange,
                                              ),
                                            ),
                                            Text(
                                              'Popayán - Cauca',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Nunito',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 50,
                              height: 100,
                              color: Colors.white10,
                              child: const Icon(
                                Icons.arrow_right,
                                size: 30,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.black12,
                        padding: const EdgeInsets.all(5),
                        height: 120,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 20, left: 15),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Apartamento en arriendo',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Nunito',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: const <Widget>[
                                            Center(
                                              child: Icon(
                                                Icons.location_pin,
                                                size: 12,
                                                color: Colors.orange,
                                              ),
                                            ),
                                            Text(
                                              'Popayán - Cauca',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Nunito',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.white10,
                                width: 50,
                                height: 100,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => DescriptionPage()));
                                      },
                                      icon: const Icon(Icons.arrow_right,
                                                size: 30, color: Colors.orange
                                            ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.black12,
                        padding: const EdgeInsets.all(5),
                        height: 120,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_960_720.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 20, left: 15),
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Casa en arriendo',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Nunito',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: const <Widget>[
                                            Center(
                                              child: Icon(
                                                Icons.location_pin,
                                                size: 12,
                                                color: Colors.orange,
                                              ),
                                            ),
                                            Text(
                                              'Popayán - Cauca',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Nunito',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.white10,
                                width: 50,
                                height: 100,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => DescriptionPage()));
                                      },
                                      icon: const Icon(Icons.arrow_right,
                                                size: 30, color: Colors.orange
                                            ),
                                    ),
                                  ],
                                )),
                          ],
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
