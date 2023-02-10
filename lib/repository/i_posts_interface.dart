import 'package:Desafio_SalaryFits/model/comments_model.dart';
import 'package:Desafio_SalaryFits/model/posts_model.dart';

abstract class IPostsRepository {
  Future<List<PostsModel>> getAllPosts();
  Future<PostsModel> getPost(int id);
  Future<List<CommentsModel>> getPostComments(int id);
}
