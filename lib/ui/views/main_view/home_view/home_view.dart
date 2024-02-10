import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_border.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_carousel_row.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_news.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:alkaramah/ui/views/main_view/home_view/home_controller.dart';
import 'package:alkaramah/ui/views/main_view/news_view/news_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int x = 0;
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(20),
                start: screenWidth(70),
                end: screenWidth(70),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth(40),
                        ),
                        child: SizedBox(
                          height: screenWidth(1.55),
                          child: CarouselSlider.builder(
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int itemIndex,
                                    int pageViewIndex) =>
                                Container(
                              width: screenWidth(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.blueColor),
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: screenWidth(20),
                                    end: screenWidth(20)),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: screenWidth(8),
                                          child: Image.network(controller
                                              .productList[itemIndex].image
                                              .toString()),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "المباراة القادمة",
                                              style: TextStyle(
                                                  color: AppColors.whiteColor),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    SizedBox(
                                                      width: screenWidth(10),
                                                      child: Image.asset(
                                                        "assets/images/pngs/Rectangle 27.png",
                                                      ),
                                                    ),
                                                    Text(
                                                      "ALKARAMA",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .whiteColor),
                                                    )
                                                    // SizedBox(
                                                    //   width: screenWidth(6),
                                                    //   child: Image.network(
                                                    //       'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain'),
                                                    // ),
                                                  ],
                                                ),
                                                Text(
                                                  "VS",
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.whiteColor),
                                                ),
                                                Column(
                                                  children: [
                                                    SizedBox(
                                                      width: screenWidth(10),
                                                      child: Image.asset(
                                                        "assets/images/pngs/Rectangle 27.png",
                                                      ),
                                                    ),
                                                    Text(
                                                      "ALKARAMA",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .whiteColor),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomCarouselRow(
                                                    iconPath: 'date',
                                                    title: 'الجمعة 2023/12/15',
                                                  ),
                                                  CustomCarouselRow(
                                                    iconPath: 'watch',
                                                    title:
                                                        'الساعة الثانية ظهرا',
                                                  ),
                                                  CustomCarouselRow(
                                                    iconPath: 'stadium',
                                                    title: 'ملعب الباسل - حمص',
                                                  ),
                                                  CustomCarouselRow(
                                                    iconPath: 'tv',
                                                    title:
                                                        'بث مباشر على قناة سورية دراما',
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            options: CarouselOptions(
                              height: screenWidth(1.87),
                              aspectRatio: 16,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  x = index;
                                });
                              },
                              disableCenter: true,
                              reverse: true,
                              autoPlay: true,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 600),
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                      ),
                      DotsIndicator(
                        reversed: true,
                        dotsCount: 3,
                        position: x,
                        decorator: DotsDecorator(
                          size: const Size.square(10),
                          color: AppColors.blueColor,
                          activeSize: const Size(20, 10),
                          activeColor: AppColors.orangeColor,
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth(70)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "أخر الأخبار",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: screenWidth(18),
                                      fontWeight: FontWeight.bold),
                                ),
                                CustomBorder(
                                  containerWidth1: 10,
                                  containerWidth2: 12,
                                  containerWidth3: 16,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(NewsView());
                              },
                              child: Text("مشاهدة الكل"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(1),
                        height: screenHeight(4.6),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsetsDirectional.all(
                                screenWidth(30.42),
                              ),
                              child: CustomNews(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
