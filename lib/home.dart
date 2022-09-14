import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Draw.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: DrawClip2(),
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa58fd2), Color(0xffddc3fc)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight)),
                ),
              ),
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffddc3fc), Color(0xff91c5fc)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    input('UserName: ', false),
                    input('Password: ', true),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: null,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff6a74ce),
                          ),
                          height: 50,
                          child: Center(
                            child: Text(
                              'Login',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Forgot Password',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff38a4ef),
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 15,
                                    spreadRadius: 1.0,
                                  ),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-3.0, -3.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0),
                                ],
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff38a4ef)),
                            height: 40,
                            width: 160,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Text(
            'Connect With Us',
            style: GoogleFonts.ubuntu(
                color: Colors.blueGrey, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}

Widget input(String hint, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.ubuntu(color: Colors.grey),
            contentPadding: EdgeInsets.only(top: 15, bottom: 15),
            prefix: pass
                ? Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                  )
                : Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
            suffixIcon: pass
                ? null
                : Icon(Icons.assignment_turned_in_outlined,
                    color: Colors.greenAccent),
            border: UnderlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}
