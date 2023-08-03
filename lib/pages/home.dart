import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: <Widget>[
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Image.asset(
                    'assets/bg2.jpg',
                    width: 1000,
                    color: Color.fromARGB(81, 0, 0, 0),
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Welcome to MaxLearn",
                          style: GoogleFonts.anekLatin(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ))),
                Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          " Lets Upgrade Your\n Learning Experience\n",
                          style: GoogleFonts.anekLatin(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                        )))
              ]),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(250, 50),
                      backgroundColor: Color.fromARGB(255, 144, 223, 79)),
                  child: Text(
                    "Continue With Number",
                    style: GoogleFonts.anekLatin(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                "Or Login With",
                style:
                    GoogleFonts.anekLatin(textStyle: TextStyle(fontSize: 15)),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(onPressed: () {}, child: Text("Google"))
            ],
          ),
        ),
      ),
    );
  }
}
