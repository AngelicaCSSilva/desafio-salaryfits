import 'package:get/get.dart';
import 'package:Desafio_SalaryFits/repository/i_posts_interface.dart';

class DetailsController extends GetxController with StateMixin {
  final IPostsRepository _dio;

  DetailsController(this._dio);

  @override
  Future<void> onInit() async {
    super.onInit();
    getPostDetails(int.parse(Get.parameters['id']!));
  }

  Future<void> getPostDetails(int id) async {
    change([], status: RxStatus.loading());
    try {
      final postDetail = await _dio.getPost(id);
      change(postDetail, status: RxStatus.success());
    } catch (e) {
      change([],
          status: RxStatus.error('Erro ao carregar os detalhes da postagem.'));
    }
  }
}
