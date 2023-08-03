import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  " Sign In To\n Your Account\n",
                  style: GoogleFonts.anekLatin(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
              ))
            ]),
            SizedBox(
              height: 40,
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
              height: 15,
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.anekLatin(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 92, 154, 41),
                            fontSize: 15)),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 60),
                    backgroundColor: Color.fromARGB(255, 144, 223, 79)),
                child: Text(
                  "Login",
                  style: GoogleFonts.anekLatin(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Or Login With",
              style: GoogleFonts.anekLatin(textStyle: TextStyle(fontSize: 15)),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(fixedSize: Size(120, 30)),
                      child: Text(
                        "Google",
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(fixedSize: Size(100, 30)),
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                    onPressed: () {},
                    child: Text(
                      "Register Here!",
                      style: TextStyle(color: Color.fromARGB(255, 85, 187, 48)),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
