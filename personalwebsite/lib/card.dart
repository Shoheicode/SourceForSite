import 'package:flutter/material.dart';

class Card extends StatefulWidget{

  Card(this.text, this.image, {super.key});

  String text;
  String image;
  @override
  State<StatefulWidget> createState() => CardState();

}

class CardState extends State<Card>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("hdhalfjdlk"),
    );
  }
  
}