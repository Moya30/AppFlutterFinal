import 'package:apppeliculasfiisi/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
         'details': (_) => DetailsScreen()
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
        color: Colors.indigo
         )
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Material App Bar'),
      //   ),
      //   body: const Center(
      //     child: Text('Hello World'),
      //   ),
      // ),
    );
  }
}