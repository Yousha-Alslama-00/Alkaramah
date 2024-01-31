import 'package:alkaramah/app/my_app_controller.dart';
import 'package:alkaramah/core/data/repository/shared_prefrence_repository.dart';
import 'package:alkaramah/core/services/connectivity_service.dart';
import 'package:alkaramah/core/translation/app_translation.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_container_horizontal.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:alkaramah/ui/views/about_clup/about_clup_view.dart';
import 'package:alkaramah/ui/views/meusiam.dart/meusiam_view.dart';
import 'package:alkaramah/ui/views/playar_view/admins_players_view.dart';
import 'package:alkaramah/ui/views/results/results_view.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  MyAppController controller = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      create: (BuildContext context) =>
          connectivityService.connectivityStatusController.stream,
      initialData: ConnectivityStatus.ONLINE,
      child: GetMaterialApp(
        locale: getLocal(),
        translations: AppTranslation(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        builder: BotToastInit(), //1. call BotToastInit
        navigatorObservers: [BotToastNavigatorObserver()],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ResultsView(),
      ),
    );
  }
}

Locale getLocal() {
  String langCode = SharedPrefrenceRepository().getAppLanguge();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else
    return Locale('fr', 'FR');
}



//Get.toNamed('/details');