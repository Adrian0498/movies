import 'package:flutter/material.dart';
import 'package:tap2/src/models/movie.dart';

class CardTrending extends StatelessWidget {
  const CardTrending({Key key, @required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(0.0, 5.0),
                blurRadius: 1.0)
          ]),
      child: ClipRRect(
          child: Container(
        child: FadeInImage(
          placeholder: AssetImage('images/activity_indicator.gif'),
          image: NetworkImage(
              'https://image.tmdb.org/t/p/w500${movie.backdrop_path}'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      )),
    );
  }
}
