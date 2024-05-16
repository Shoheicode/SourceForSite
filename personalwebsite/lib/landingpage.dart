
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget{
  const LandingPage({super.key});

  static const description = "I AM SOOO COOOLLL. I CREATED GAMES AND PROJECTS. I AM A C++ DEVELOPER AND HAVE WORK EXPERIENCE MAKING APPS AND FLUTTER STUFF";
  
  static _launchURL(String url) async{
    final Uri ur = Uri.parse(url);
    if(await canLaunchUrl(ur)){
      launchUrl(ur);
    }
    else{
      throw "CANNOT RUN";
    }
  }

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff380ced), Color(0xff54cbfc)]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Image(
                image: AssetImage("assets/profile.png"),
                width: 300,
                height: 300
              )
            ),
            const SizedBox(height: 10,),
            const Text(
              "Jason Irie",
              style: TextStyle(
                color:Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: const Text(
                LandingPage.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                color:Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
              )
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    LandingPage._launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
                  },
                  child: Image.asset("assets/instagram.png"),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    LandingPage._launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
                  },
                  child: Image.asset("assets/facebook.png"),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    LandingPage._launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
                  },
                  child: Image.asset("assets/twitter.png"),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(          
                    color: Colors.white
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/profile.png", height: 100),
                      const Text("This project is meant to showcase some of my cool things")

                    ]
                  ),
                ),
                Container(
                  decoration: BoxDecoration(          
                    color: Colors.white
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/profile.png", height: 100),
                      const Text("This project is meant to showcase some of my cool things PT2")

                    ]
                  ),
                ),
                Container(
                  decoration: BoxDecoration(          
                    color: Colors.white
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/profile.png", height: 100),
                      const Text("This project is meant to showcase some of my cool things P2 3")

                    ]
                  ),
                )
              ],
            )
            
          ],
        )
      )
    );
  }  
}


