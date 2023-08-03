import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'register.dart';

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
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                        )))
              ]),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
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
              Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style:
                            OutlinedButton.styleFrom(fixedSize: Size(120, 30)),
                        child: Text(
                          "Google",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style:
                            OutlinedButton.styleFrom(fixedSize: Size(100, 30)),
                        child: Text(
                          "Facebook",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Dont have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        "Register Here!",
                        style:
                            TextStyle(color: Color.fromARGB(255, 85, 187, 48)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
