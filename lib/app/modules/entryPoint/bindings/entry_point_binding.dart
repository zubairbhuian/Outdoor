import 'package:get/get.dart';

import 'package:outdoor/app/modules/entryPoint/controllers/favorites_controller.dart';
import 'package:outdoor/app/modules/entryPoint/controllers/home_controller.dart';
import 'package:outdoor/app/modules/entryPoint/controllers/order_controller.dart';
import 'package:outdoor/app/modules/entryPoint/controllers/profile_controller.dart';
import 'package:outdoor/app/modules/entryPoint/controllers/search_controller.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<SearchController>(
      () => SearchController(),
    );
    Get.lazyPut<OrderController>(
      () => OrderController(),
    );
    Get.lazyPut<FavoritesController>(
      () => FavoritesController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<EntryPointController>(
      () => EntryPointController(),
    );
  }
}
