import 'dart:convert';
import 'dart:io';

import '../model/post.dart';
import 'post_repository.dart';

class PostFileRepositoryImpl implements PostRepository {
  List<Post> _posts = [];

  @override
  Future<void> addPost(Post post) async {
    File file = File('bin/unit_test/exam5/post_file.txt');
    final json = jsonEncode(post.toJson());
    file.writeAsString(json);
    _posts.add(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    File file = File('bin/unit_test/exam5/post_file.txt');
    _posts.where((element) => element.id != post.id).toList();
    List<String> postJsonList = _posts.map((post) => jsonEncode(post)).toList();
    file.writeAsString(jsonEncode(postJsonList));
  }

  @override
  Future<List<Post>> getPosts() async {
    return _posts;
  }

  @override
  Future<void> updatePost(Post post) async {
    File file = File('bin/unit_test/exam5/post_file.txt');
    _posts = _posts.map((e) {
      if (e.id == post.id) {
        return post;
      }
      return e;
    }).toList();

    List<String> postJsonList = _posts.map((post) => jsonEncode(post)).toList();
    file.writeAsString(jsonEncode(postJsonList));
  }
}
