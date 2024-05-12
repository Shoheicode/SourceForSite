import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse("https://www.youtube.com/watch?v=dQw4w9WgXcQ&pp=ygUJcmljayByb2xs");

class LoadingPage extends StatefulWidget{
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  String desc = "A developer who is interested in coding";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[Color(0xff6ed2f7), 
            Color(0xff54cbfc)])
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 300,
              width:300,
              child:ClipRRect(borderRadius: BorderRadius.all(Radius.circular(80)),
                child:Image(
                  image: AssetImage("assets/profile.png"),
                  fit:BoxFit.cover
                ),
              )
            ),
            Text(desc),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    launchUrl(url);
                  },
                  child: Image.asset("assets/facebook.png"),
                ),
                Image.asset("assets/instagram.png"),
                Image.asset("twitter.png")
              ] 
            )
          ],
        ),
      )
    );
  }
}