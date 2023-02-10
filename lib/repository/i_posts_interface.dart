import 'package:salaryfits_test/model/posts_model.dart';

abstract class IPostsRepository {
  Future<List<PostsModel>> getAllPosts();
  Future<PostsModel> getPost(int id);
}
