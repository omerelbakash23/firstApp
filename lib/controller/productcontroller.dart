// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:apis/model/product.dart';
import 'package:apis/services/productservices.dart';
import 'package:get/state_manager.dart';

class ProductModelcontroller extends GetxController{
  @override
  void onInit() {
    getmyproduct();
    super.onInit();
  }
  List Productslist = <Myproduct>[].obs;
  var isloading =true.obs;
 void getmyproduct () async {
  var Datas = await Productservice.getProducts();
  try {
    isloading.value=true;
    if (Datas.isNotEmpty) {
      Productslist.addAll(Datas);
    }
  } finally  {
        isloading.value=false;

  }

  }
}