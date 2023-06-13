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
    _posts = _posts.where((element) => element.id != post.id).toList();
    List<Map<String, dynamic>> postMapList =
        _posts.map((post) => post.toJson()).toList();
    await file.writeAsString(jsonEncode(postMapList));

    print(postMapList);
  }

  @override
  Future<List<Post>> getPosts() async {
    File file = File('bin/unit_test/exam5/post_file.txt');
    file.readAsString();
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
    List<Map<String, dynamic>> postMapList =
        _posts.map((post) => post.toJson()).toList();
    file.writeAsString(jsonEncode(postMapList));
  }
}
