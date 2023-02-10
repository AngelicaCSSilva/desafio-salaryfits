import 'package:dio/dio.dart';
import 'package:Desafio_SalaryFits/model/comments_model.dart';
import 'package:Desafio_SalaryFits/model/posts_model.dart';
import 'package:Desafio_SalaryFits/repository/i_posts_interface.dart';

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

  @override
  Future<PostsModel> getPost(int id) async {
    try {
      String url = 'https://jsonplaceholder.typicode.com/posts/$id';
      final response = await _dio.get(url);
      return PostsModel.fromMap(response.data);
    } on DioError {
      rethrow;
    }
  }

  @override
  Future<List<CommentsModel>> getPostComments(int id) async {
    try {
      final response = await _dio
          .get<List>('https://jsonplaceholder.typicode.com/posts/$id/comments');
      return response.data!.map((e) => CommentsModel.fromMap(e)).toList();
    } on DioError {
      rethrow;
    }
  }
}
