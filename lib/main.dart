import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/my_app.dart';
import 'core/data/repository/shared_prefrence_repository.dart';
import 'core/services/connectivity_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(ConnectivityService());
//  Get.put(CartService());
  Get.put(Connectivity());

  Get.lazyPut(() => SharedPrefrenceRepository());

  await Get.putAsync(() async {
    return await SharedPreferences.getInstance();
  });

  runApp(MyApp());
}
