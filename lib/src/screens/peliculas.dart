import 'package:flutter/material.dart';
import 'package:tap2/src/models/movie.dart';
import 'package:tap2/src/network/api_movies.dart';
import 'package:tap2/src/views/card_trending.dart';

class Peliculas extends StatefulWidget {
  Peliculas({Key key}) : super(key: key);

  @override
  _PeliculasState createState() => _PeliculasState();
}

class _PeliculasState extends State<Peliculas> {
  ApiMovies apiMovies;

  @override
  void initState() {
    super.initState();
    apiMovies = ApiMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Movies'),
      ),
      body: FutureBuilder(
        future: apiMovies.getPopular(),
        builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Has an error in this request :("));
          } else if (snapshot.connectionState == ConnectionState.done) {
            return _listTrending(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _listTrending(List<Movie> movies) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Movie movie = movies[index];
        return CardTrending(movie: movie);
      },
      itemCount: movies.length,
    );
  }
}
