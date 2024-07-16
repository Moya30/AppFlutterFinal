import 'package:apppeliculasfiisi/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Todo: cambiar luego por una instancia de movie
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
             delegate: SliverChildListDelegate(
              [
                _PosterAndTitle(),
                _Overview(),
                _Overview(),
                _Overview(),
                _Overview(),
                CastingCards(),

              ]
             )
          )
        ],
        // child: Center(
        //   child: Text('$movie'),
        // ),
      ),
    );
  }
}


class _CustomAppBar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       backgroundColor: Colors.indigo,
       expandedHeight: 200,
       floating: false,
       pinned: true,
       flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: EdgeInsets.all(0),
          title: Container(
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom:10),
              color: Colors.black12,
              child: Text(
                 'Movie title',
                  style: TextStyle( fontSize: 16)
              ),
          ),
          background: FadeInImage(
             placeholder: AssetImage('assets/loading.gif'),
             image: NetworkImage('http://via.placeholder.com/500x300'),
             fit: BoxFit.cover,
          ),
       ),
    );
  }
}


class _PosterAndTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final TextTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only( top:20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage('http://via.placeholder.com/200x300'),
                    height: 150,
                ),

              ),

              SizedBox( width: 20),

              Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    Text('movie.title', style: TextTheme.headline5, overflow: TextOverflow.ellipsis, maxLines:2),
                    Text('OriginalTitle', style: TextTheme.subtitle1, overflow: TextOverflow.ellipsis),
                    Row(
                      children: [
                          Icon( Icons.start_outlined, size: 15, color: Colors.grey),
                          SizedBox( width: 5),
                          Text('movie.voteAverage', style: TextTheme.caption)
                      ],
                    )
                 ],
              )
          ],
      ),

    );
  }
}

class _Overview extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'orem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
        ),

    );
  }
}