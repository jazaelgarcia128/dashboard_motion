import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var tam = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: tam.height * .4, //determina el tamaño del header
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/headermotion.png'))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.account_box, size: 80, color: Colors.white),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Bienvenido",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 20)),
                            Text("Usuario invitado",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 20))
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 15, left: 65),
                            child: Icon(Icons.search,
                                size: 40, color: Colors.white)),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 5),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Membresías",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Icon(
                            Icons.card_membership,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 3,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.card_membership,
                                  size: 60, color: Color(0xff5b8bb3)),
                              Text("Pro", style: GoogleFonts.montserrat()),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.card_membership,
                                  size: 60, color: Color(0xffe4b858)),
                              Text("Connect", style: GoogleFonts.montserrat()),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.card_membership,
                                  size: 60, color: Color(0xffc45559)),
                              Text("Business", style: GoogleFonts.montserrat()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 305, left: 5),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Cursos disponibles",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Icon(
                    Icons.school,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Align(
                alignment: Alignment(0.26, 0.26),
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.school, size: 60, color: Colors.black),
                          Text("Curso", style: GoogleFonts.montserrat()),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.school, size: 60, color: Colors.black),
                          Text("Curso", style: GoogleFonts.montserrat()),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.school, size: 60, color: Colors.black),
                          Text("Curso", style: GoogleFonts.montserrat()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 495, left: 5),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Talleres disponibles",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Icon(
                    Icons.work,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Align(
                alignment: Alignment(0.98, 0.98),
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.work, size: 60, color: Colors.black),
                          Text("Taller", style: GoogleFonts.montserrat()),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.work, size: 60, color: Colors.black),
                          Text("Taller", style: GoogleFonts.montserrat()),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.work, size: 60, color: Colors.black),
                          Text("Taller", style: GoogleFonts.montserrat()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
