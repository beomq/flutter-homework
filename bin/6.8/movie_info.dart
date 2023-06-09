import 'dart:convert';

import 'package:http/http.dart' as http;
import 'model/movie_detail.dart';
import 'model/movie_info.dart';

void main() async {
  final movies = await getMovies();
  final movieTitles = movies.map((e) => e.title).toList();

  print(movies);
  print(movieTitles);

  final movieDetail = await getMovieDetail(840326);
  print('영화 제목 : ${movieDetail.title}');
  print('영화 설명 : ${movieDetail.overview}');
  print('상영 시간 : ${movieDetail.runtime}분');
}

Future<List<Movie>> getMovies() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final json = jsonDecode(response.body);

  return MovieInfo.fromJson(json).results;
}

Future<MovieDetail> getMovieDetail(int movieId) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

  final json = jsonDecode(response.body);

  return MovieDetail.fromJson(json);
}
