import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  static TextStyle IndiesStyle = GoogleFonts.indieFlower(
    color: const Color.fromARGB(255, 251, 251, 251),
    fontSize: 15,
  );
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text("Favorite Animal",
          style: GoogleFonts.indieFlower(
            color: const Color.fromARGB(255, 251, 251, 251),
            fontSize: 35,
          )),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      centerTitle: true,
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 138, 78),
      appBar: appBar,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 20),
                child: ClipOval(
                  child: Image.asset(
                    'assets/img/BabyFennecFox.png',
                    fit: BoxFit.cover,
                    width: 280,
                    height: 280,
                  ),
                )),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Text(
                    'Name:Fennec Fox',
                    style: IndiesStyle,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20, bottom: 15),
                  child: Text(
                    'Gender: Male',
                    style: IndiesStyle,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20, bottom: 15),
                  child: Text(
                    'Hobbies: be cute',
                    style: IndiesStyle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
