import 'package:get/get.dart';
import 'package:makeupshop/models/makeupModel.dart';
import 'package:makeupshop/services/apiservices.dart';

class ApiController extends GetxController {
  // ignore: deprecated_member_use
  var prodsList = List<Products>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProductsList();
  }

  void fetchProductsList() async {
    var products = await ApiService.fetchProducts();

    if (products != null) {
      prodsList.value = products;
    }
  }
}
