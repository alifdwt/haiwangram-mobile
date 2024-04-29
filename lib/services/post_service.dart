import 'dart:convert';

import 'package:haiwangram_mobile/config.dart';
import 'package:haiwangram_mobile/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostService {
  Future<Post> getPosts(int limit) async {
    final response =
        await http.get(Uri.parse('${Config.apiUrl}/photos?limit=$limit'));

    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<Post> getPost(int id) async {
    final response = await http.get(Uri.parse('${Config.apiUrl}/photos/$id'));

    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
