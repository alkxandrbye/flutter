import 'package:flutter/material.dart';

class container_img {
   static Container container({
  required AssetImage img,
    //required Icon icon
  })
  {
    return Container(
      width: 65,
      height: 50,
      child: MaterialButton(
        shape: const CircleBorder(),
        child: Image(
        image: img, 
      ),
      onPressed: () {

      },
      ),
    );
  }
}