import 'package:alkaramah/core/data/models/product_info.dart';
import 'package:alkaramah/core/data/repository/prodcut_repository.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_toast.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[].obs;
  RxInt count = 0.obs;

  @override
  void onInit() {
    getAllProdcuts();
    super.onInit();
  }

  void getAllProdcuts() {
    GetAllProductsRepository().getAllProduct().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        productList.clear();
        productList.addAll(r);
      });
    });
  }
}
