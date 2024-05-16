
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget{
  const LandingPage({super.key});

  static const description = """

  A current College Student (specializing in Software Development) pursuing my Bachelors in Computer Science.

  I enjoy working on my own personal projects and participating in Hackathons and learning about new Technologies. Recently, I learned about Flutter and Firebase and plan on implementing that technology in future projects like C++ related projects with Firebase and Flutter Websites.

  I am currently apart of the Google Developer Student Club at my school currently and partaking in creating intricate projects. To learn more, please look below!

  """;
  
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
        decoration: BoxDecoration(
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
            
            Flexible(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(child: Container(
                  decoration: BoxDecoration(          
                    color: Colors.white
                  ),
                  child: Flexible(
                    
                    child: Column(
                    children: <Widget>[
                      Image.asset("assets/profile.png", height: 200),
                      const Text("This project is meant to showcase some of my cool things")

                    ]
                  ),
                  )
                ),
                )
                // Container(
                //   decoration: BoxDecoration(          
                //     color: Colors.white
                //   ),
                //   child: Column(
                //     children: <Widget>[
                //       Image.asset("assets/profile.png", height: 200),
                //       const Text("This project is meant to showcase some of my cool things PT2")

                //     ]
                //   ),
                // ),
                // Container(
                //   decoration: BoxDecoration(          
                //     color: Colors.white
                //   ),
                //   child: Column(
                //     children: <Widget>[
                //       Image.asset("assets/profile.png", height: 200),
                //       const Text("This project is meant to showcase some of my cool things P2 3")

                //     ]
                //   ),
                // )
              ],
            )
            )
          ],
        )
      )
    );
  }  
}


