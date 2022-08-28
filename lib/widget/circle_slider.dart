import 'package:flutter/material.dart';
import 'package:myapp/model/model_movie.dart';
import 'package:myapp/screen/detail_screen.dart';

class CirclrSlider extends StatelessWidget {
  final List<Movie> movies;
  CirclrSlider({required this.movies});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('미리보기'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImage(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImage(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DeatailScreen(
                  // 인자를 넘김
                  movie: movies![i],
                );
              }));
        },
        child: Container(
            padding: EdgeInsets.only(right: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/' + movies[i].poster),
                radius: 48,
              ),
            )),
      ),
    );
  }
  return results;
}
