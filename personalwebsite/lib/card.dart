import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget{

  ImageCard(this.text, this.image, {super.key});

  String text;
  String image;

  

  @override
  State<StatefulWidget> createState() => CardState(text, image);

}

class CardState extends State<ImageCard>{
  
  late String text;
  late String image;

  CardState(String a, String b){
    text = a;
    image = b;
  }

  @override
  Widget build(BuildContext context) {
    String a = "hi";
    // TODO: implement build
    return Container(
        decoration: const BoxDecoration(          
          color: Colors.white
        ),
          child: Column(
          children: <Widget>[
            Image.asset("assets/profile.png", height: 300),
            Text(text)
          ]
        ),
    );
  }
  
}