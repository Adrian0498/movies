class Movie {
  String title;
  String backdrop_path;
  String poster_path;
  String overview;
  double popularity;
  double vote_average;

  Movie(
      {this.title,
      this.backdrop_path,
      this.poster_path,
      this.overview,
      this.popularity,
      this.vote_average});

  factory Movie.fromJSON(Map<String, dynamic> map) {
    return Movie(
        title: map['title'],
        backdrop_path: map['backdrop_path'],
        poster_path: map['poster_path'],
        overview: map['overview'],
        popularity: map['popularity'],
        vote_average: map['vote_average'] is int
            ? (map['vote_average'] as int).toDouble()
            : map['vote_average']);
  }
}
