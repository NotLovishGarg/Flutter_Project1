import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj1/pages/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(children: [
            Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image.asset("assets/bg3.jpg")),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "  Register\n",
                  style: GoogleFonts.anekLatin(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
              ))
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Enter Email',
                      labelText: 'Email'),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Enter Email',
                      labelText: 'Confirm Email'),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Enter Password Here',
                    labelText: 'Password',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'Enter Password Here',
                    labelText: 'Confirm Password',
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 55),
                    backgroundColor: Color.fromARGB(255, 144, 223, 79)),
                child: Text(
                  "Register",
                  style: GoogleFonts.anekLatin(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
                )),
            Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Text(
                  "I have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Login!",
                      style: TextStyle(color: Color.fromARGB(255, 85, 187, 48)),
                    ))
              ],
            )
          ]),
        ));
  }
}
