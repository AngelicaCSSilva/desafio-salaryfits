import 'package:get/get.dart';
import 'package:salaryfits_test/repository/i_posts_interface.dart';

class CommentsController extends GetxController with StateMixin {
  final IPostsRepository _dio;

  CommentsController(this._dio);

  @override
  Future<void> onInit() async {
    super.onInit();
    getPostsComments(int.parse(Get.parameters['id']!));
  }

  Future<void> getPostsComments(int id) async {
    change([], status: RxStatus.loading());
    try {
      final postDetail = await _dio.getPostComments(id);
      change(postDetail, status: RxStatus.success());
    } catch (e) {
      change([],
          status:
              RxStatus.error('Erro ao carregar os comentários da postagem.'));
    }
  }
}
