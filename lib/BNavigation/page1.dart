import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rentnow/BNavigation/page2.dart';
import '../pages/descriptionPage.dart';

final List<String> imgList = [
  'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_960_720.jpg',
  'https://cdn.pixabay.com/photo/2013/11/13/21/14/san-francisco-210230_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/08/27/10/16/interior-2685521_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/04/18/08/50/kitchen-1336160_960_720.jpg'
];

final themeMode = ValueNotifier(2);

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
                        image: const AssetImage('assets/img/fondo.jpg',),
                        fit: BoxFit.cover,
                        color: Colors.black54,
                        colorBlendMode: BlendMode.darken,
                        width: size.width,
                        height: size.height * 0.45,
                      ),
                      const Center(
                        child: (
                          Text('Encuentra tu alquiler fácil', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Nunito',
                            ),
                          )
                        ),
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
                      color:Colors.white,
                      height: size.height * 0.1,
                      image: const AssetImage('assets/img/logo.png'),
                    ),
                  ),
                ),
                loginForm(context),
              ],
            ),
// se realiza la creación de una columna después de un stack para dividir en dos la pantalla

SizedBox(
  child: Stack(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Text('Recomendaciones', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Nunito',
                            ),
                          )
      ),
    ],
  ),
),

SingleChildScrollView(
  child: Column(
    children: [

        CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionPage()));
              }),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2013/11/13/21/14/san-francisco-210230_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionPage()));
              }),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionPage()));
              }),
          ),
                    Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionPage()));
              }),
          ),
                    Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/27/10/16/interior-2685521_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionPage()));
              }),
          ),
                    Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/18/08/50/kitchen-1336160_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionPage()));
              }),
          ),
        ], 
        options: CarouselOptions(
            height: 170.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
        
    ],
  ),
)

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
          SizedBox(height: size.height * 0.3),
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
              ]
            ),
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
                        keyboardType: TextInputType.emailAddress, //@ en el teclado
                        decoration: InputDecoration(
                          fillColor: const Color(0xff4A4A4A),
                          filled: true,
                          border: InputBorder.none,
                          hintText: "Ingrese su búsqueda",
                          hintStyle: const TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13, 
                          ),

                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Color(0xff4A4A4A)),
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                          child: const Text('Buscar', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Nunito'
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
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

