import 'package:apppeliculasfiisi/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon( Icons.search_outlined ),
            // onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate() ),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            // tarjetas principales
            CardSwiper(),

            // Slider de peliculas

            MovieSlider(),
         
           
           
             
          ],
        )
      )
    );
    
  }
}