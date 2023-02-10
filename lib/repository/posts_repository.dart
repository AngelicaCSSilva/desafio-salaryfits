import 'package:dio/dio.dart';
import 'package:salaryfits_test/model/posts_model.dart';
import 'package:salaryfits_test/repository/i_posts_interface.dart';

class PostsRepository implements IPostsRepository {
  final Dio _dio;

  PostsRepository(this._dio);

  @override
  Future<List<PostsModel>> getAllPosts() async {
    try {
      final response =
          await _dio.get<List>('https://jsonplaceholder.typicode.com/posts');
      return response.data!.map((e) => PostsModel.fromMap(e)).toList();
    } on DioError {
      rethrow;
    }
  }

}
