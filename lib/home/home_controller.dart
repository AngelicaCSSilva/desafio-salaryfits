import 'package:get/get.dart';
import 'package:Desafio_SalaryFits/repository/i_posts_interface.dart';

class HomeController extends GetxController with StateMixin {
  final IPostsRepository _dio;

  HomeController(this._dio);

  @override
  Future<void> onInit() async {
    super.onInit();
    getPosts();
  }

  Future<void> getPosts() async {
    change([], status: RxStatus.loading());
    try {
      final allPosts = await _dio.getAllPosts();
      change(allPosts, status: RxStatus.success());
    } catch (e) {
      change([],
          status:
              RxStatus.error('Erro ao carregar a página. Tente novamente.'));
    }
  }
}
