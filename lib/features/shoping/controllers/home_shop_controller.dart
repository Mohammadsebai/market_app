import 'package:get/get.dart';

class HomeShopController extends GetxController{
  static HomeShopController get instance => Get.find();

  final  carouselControllerIndex =0.obs;

  void updatePageIndicator(index){
    carouselControllerIndex.value = index;
  }

}