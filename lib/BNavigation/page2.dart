import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rentnow/model/rental_model.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);
  TextEditingController textController = TextEditingController();

  @override 
  State<Page2> createState() => _Page2();
}

class _Page2 extends State<Page2> {

  static List<RentalModel> main_movies_list = [
    RentalModel(
      "Casa en Campo Bello, Norte, Popayán", 
      240000, 
      "Popayán", 
      "https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9kZGZlMmZiMS0wNDc2LTNhOTgtODFmMC03OWRiMzM0ODBiZTkvODE0ZGI4ZGY5Y2Q1OTRkZTk0MWZmMmQ2MGEzMzQ2YjgxZDUwMWQ2MDJlZDQ2MjMzNzhmZmM5MWJlYjQwNGJmNC5qcGciLCJicmFuZCI6IlJFU0VNIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4NDAsImhlaWdodCI6NjMwLCJmaXQiOiJjb3ZlciJ9fX0="
      ),
    RentalModel(
      "Casa en arriendo Santa Clara, Norte", 
      3500000, 
      "Popayán", 
      "https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9kYmE3YmM3NS0zODliLTM4YTItYjFkNy04Nzc1NmY3OWVmM2IvM2FlZGE2ZTBkYzcxYzg4NzZlYjI4OTFlZTJjYmNhYTU3YmNkYzMwZmZmNzY0ZTk3NTJkNzE4MDY2OGRlYjg2Yy5qcGciLCJicmFuZCI6IlJFU0VNIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4NDAsImhlaWdodCI6NjMwLCJmaXQiOiJjb3ZlciJ9fX0="
    ), 
    RentalModel(
      "Casa en Pubenza (catay), Popayán", 
      2600000, 
      "Popayán", 
      "https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9kMTEwMzE5NS1hZTE2LTM5Y2YtYjA4Yy1hMjQ3YjgzNzk4NzcvNTg0YzA0ZTg4NGIwNjcwYTA3ZGY0Y2RhNGU1MzQ3YzIzOGIwOTMxYjVjNmNlZGIyNThiODA3ZWQwYTRkNzhhYS5qcGVnIiwiYnJhbmQiOiJSRVNFTSIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6ODQwLCJoZWlnaHQiOjYzMCwiZml0IjoiY292ZXIifX19"
    ),
    RentalModel(
      "Casa en arriendo Cl 5 #117, Popayán, Cauca, Colombia", 
      5700000, 
      "Popayán", 
      "https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9lYjMzMTc1OS04MGM3LTM3NDktYTljZC0yYmJmNmRiNWM0OGIvMDk2MmU1NjEzM2ViZjFmYmQ1MjM0ZDI5Yjk1MWFjZjYyMmNhMGY2ZmQ1ODJlMTEyOGMzNDFkMzcxMGEwNzUzMi5qcGciLCJicmFuZCI6IlJFU0VNIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4NDAsImhlaWdodCI6NjMwLCJmaXQiOiJjb3ZlciJ9fX0="
    ),
    RentalModel(
      "Casa en Las Américas, Popayán", 
      2000000, 
      "Popayán", 
      "https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9lMmM2NDVhZi05MGNmLTMzMTItODkwYy00MzhiY2YyOGNjMGUvMjU4Mzk1MTU0MDVhOGIyYmFlMTZiODMwNmQyN2E1NTUxOGI1NzFlMGUyZTI2MWM5OGU1ODI2ODcyODhkOTM5NS5qcGciLCJicmFuZCI6IlJFU0VNIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4NDAsImhlaWdodCI6NjMwLCJmaXQiOiJjb3ZlciJ9fX0="
    ),
    RentalModel(
      "Casa en Pino Pardo, Popayán", 
      100000, 
      "Popayán", 
      "https://img.resemmedia.com/eyJidWNrZXQiOiJwcmQtbGlmdWxsY29ubmVjdC1iYWNrZW5kLWIyYi1pbWFnZXMiLCJrZXkiOiJpbmdlc3Rlci9lMDJjNGVlMS0yODc4LTMwYjgtOGQxMy02YmY0ZDkyNTJiYmIvZmY1NWFlYzdiOGI5ZjBmMGI2N2YwZmIzODYzNjUwZGMyNzhlMDVjZDRlNDc5YjI1MjYyNjI3NzRjMDYxMjRlMS5qcGciLCJicmFuZCI6IlJFU0VNIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4NDAsImhlaWdodCI6NjMwLCJmaXQiOiJjb3ZlciJ9fX0="
      ),    
  ];

  List<RentalModel> display_list = List.from(main_movies_list);

  void updateList(String value){
    setState(() {
      display_list = main_movies_list.where(
      (element) => element.rental_title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: const Color(0xffEFEFEF),
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              onChanged: (value) => updateList(value),
                cursorColor: const Color(0xff999999),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(0, 13, 20, 0),
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 5, 10),
                    child: Icon(
                      Icons.search, 
                      color: Color(0xff999999),
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: 'Buscar',
                  hintStyle: TextStyle(
                    color: Color(0xff393939),
                  ),
                ),
              ),
          ),
          Container(
            // child: MaterialButton(
            //   child: const Text('Buscar', 
            //     style: TextStyle(
            //       color: Colors.black54,
            //       fontSize: 20,
            //       fontFamily: 'Nunito'
            //     ),
            //   ),
            //   onPressed: (){},
            // ),
            decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xffDFDEDE),
              ),
              bottom: BorderSide(
                color: Color(0xffDFDEDE),
              ),
            ),
          ),
            width: double.infinity,
            child: const TextField(
                cursorColor: Color(0xff999999),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                      Icons.tune, 
                      color: Color(0xff999999),
                      size: 20,
                    ),
                  border: InputBorder.none,
                  hintText: 'Filter',
                  hintStyle: TextStyle(
                    color: Color(0xff393939),
                  ),
                ),
              ),
          ),
          Expanded(
            child: display_list.isEmpty ? const Center(
              child: Text(
                'Now result found',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              )
            ):ListView.builder(
              itemCount: display_list.length,
              itemBuilder: (context, index) => ListTile(
                contentPadding: const EdgeInsets.all(8.0),
                title: Text(
                  display_list[index].rental_title!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '${display_list[index].rental_price!}',
                  style: const TextStyle(
                    color: Colors.black45,
                  ),
                ),
                subtitle: Text(
                  display_list[index].rental_location!,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    (display_list[index].rental_img_url!),
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}