import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:tap2/src/models/movie.dart';

class ApiMovies {
  final String URL_POPULAR =
      'https://api.themoviedb.org/3/movie/popular?api_key=04555f6285ed64f4e26b003b4010c581&language=es-MX&page=1';
  Client http = new Client();
  Future<List<Movie>> getPopular() async {
    final response = await http.get(URL_POPULAR);
    if (response.statusCode == 200) {
      var movies = jsonDecode(response.body)['results'] as List;
      List<Movie> listMovies =
          movies.map((movie) => Movie.fromJSON(movie)).toList();
      return listMovies;
    } else {
      return null;
    }
  }
}
