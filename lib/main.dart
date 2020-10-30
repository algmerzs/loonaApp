import 'package:flutter/material.dart';
import 'principal_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoonaApp',
      home: InitialPage(),
      routes: {
        'principal': (context) => PrincipalPage(),
      },
    );
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          ClipRRect(
            borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(350.0)),
            child: Container(
              height: 460,
              width: double.infinity,
              color: Color.fromRGBO(111, 104, 121, .65),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Text(
                          '¡Bienvenid@ a la',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(-2.7, -1.3),
                                blurRadius: 12.4,
                                color: Color.fromARGB(0, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(-2.7, -1.3),
                                blurRadius: 12.4,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'LOON△pp!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(-2.7, -1.3),
                                blurRadius: 12.4,
                                color: Color.fromARGB(0, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(-2.7, -1.3),
                                blurRadius: 12.4,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.purple,
                      onPressed: () =>
                          Navigator.popAndPushNamed(context, 'principal'),
                      child: Text('Pantalla principal'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 150.0, top: 450.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Image(
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-4tRIE9m2EEg/X2ud6DUKYLI/AAAAAAAAyBc/jIyC_B9XlgUDHVnRbwuqzmnFpGYnri_GwCNcBGAsYHQ/s1280/LOONA%2B%25E1%2584%258B%25E1%2585%25B5%25E1%2584%2583%25E1%2585%25A1%25E1%2586%25AF%25E1%2584%258B%25E1%2585%25B4%2B%25E1%2584%2589%25E1%2585%25A9%25E1%2584%2582%25E1%2585%25A7%2Bcomeback.png'),
                  ),
                ),
                Text(
                  'COMEBACK',
                  style: TextStyle(letterSpacing: 5, color: Colors.white),
                ),
                Text(
                  'STREAM WHY NOT?',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.8),
            end: FractionalOffset(0.0, 0.2),
            colors: [
              Colors.black,
              Colors.purple,
            ]),
      ),
    );
    return Stack(
      children: [gradient],
    );
  }
}
