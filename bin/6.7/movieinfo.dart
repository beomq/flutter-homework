import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}

void main() async {
  final movie = await getMovieInfo();
  final Map<String, dynamic> decodeData = jsonDecode(movie);

  final director = decodeData['director'];

  print(director);
}
