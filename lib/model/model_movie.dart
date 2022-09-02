import 'package:cloud_firestore/cloud_firestore.dart';

class Movie{
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  // 해당 데이터의 CRUD를 간단하게 처리 할 수 있음
  //final DocumentReference reference;

  Movie.fromMap(Map<String, dynamic> map)
  :title = map['title'],
   keyword = map['keyword'],
   poster = map['poster'],
   like = map['like'];

   @override
   String toString() => "Movie<$title:$keyword>";
}