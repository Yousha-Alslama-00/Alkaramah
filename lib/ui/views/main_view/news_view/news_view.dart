import 'package:alkaramah/ui/shared/custom_widgets/custom_app_bar.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_news.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:alkaramah/ui/views/main_view/main_news_view/main_news_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          title: "صفحة الخبر",
        ),
        preferredSize: Size.fromHeight(75),
      ),
      body: InkWell(
        onTap: () {
          Get.to(MainNewsView());
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsetsDirectional.all(
                  screenWidth(30.42),
                ),
                child: CustomNews(
                  heightContainer: screenWidth(2.8),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
