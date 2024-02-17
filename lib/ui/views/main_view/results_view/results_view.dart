import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:alkaramah/ui/views/main_view/results_view/tabel/tabel_content.dart';
import 'package:alkaramah/ui/views/main_view/results_view/tabel/tabel_header.dart';
import 'package:flutter/material.dart';

class ResultsView extends StatefulWidget {
  const ResultsView({super.key});

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  bool showTable10 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: screenWidth(20.5714),
          end: screenWidth(20.5714),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(20.57),
                bottom: screenWidth(20.57),
              ),
              child: Container(
                height: screenWidth(4.11),
                decoration: BoxDecoration(
                  color: AppColors.greyColor2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: screenWidth(27.42),
                    end: screenWidth(27.42),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Image.asset(
                          'assets/images/pngs/ic_rewand.png',
                          width: screenWidth(20.57),
                        ),
                      ),
                      Container(
                        width: screenWidth(4.57),
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: screenWidth(41.14),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                text: 'السبت',
                                styleType: TextStyleType.TITLE,
                              ),
                              CustomText(
                                text: '3 نوفمبر',
                                styleType: TextStyleType.SUBTITLE,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth(4.57),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: AppColors.orangeColor,
                              width: screenWidth(82.28),
                            ),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.orangeColor,
                              AppColors.whiteColor,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: screenWidth(41.14),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                text: 'السبت',
                                styleType: TextStyleType.TITLE,
                              ),
                              CustomText(
                                text: '3 نوفمبر',
                                styleType: TextStyleType.SUBTITLE,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth(4.57),
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: screenWidth(41.14),
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                text: 'السبت',
                                styleType: TextStyleType.TITLE,
                              ),
                              CustomText(
                                text: '3 نوفمبر',
                                styleType: TextStyleType.SUBTITLE,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: screenWidth(1.87),
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemExtent: screenWidth(1.09),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: screenWidth(1),
                    height: screenWidth(1.87),
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/pngs/bg.png',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                top: screenWidth(8.22),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: screenWidth(5.87),
                                    height: screenWidth(5.87),
                                    decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                    text: 'الكرامة',
                                    styleType: TextStyleType.CUSTOM,
                                    textColor: AppColors.whiteColor,
                                    fontSize: screenWidth(15.82),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    CustomText(
                                      text: 'الجمعة  22/12/2022',
                                      styleType: TextStyleType.CUSTOM,
                                      textColor: AppColors.whiteColor,
                                      fontSize: screenWidth(20.57),
                                      textAlign: TextAlign.center,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        top: screenWidth(13.71),
                                        start: screenWidth(7.48),
                                      ),
                                      child: CustomText(
                                        text: '12:12 عصرا',
                                        styleType: TextStyleType.CUSTOM,
                                        textColor: AppColors.whiteColor,
                                        fontSize: screenWidth(27.42),
                                      ),
                                    ),
                                  ],
                                ),
                                CustomText(
                                  text: 'ملعب خالد ابن الوليد',
                                  styleType: TextStyleType.TITLE,
                                  fontWeight: FontWeight.normal,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: '0' '  :  ',
                                      styleType: TextStyleType.CUSTOM,
                                      fontWeight: FontWeight.bold,
                                      textColor: AppColors.maingreenColor,
                                      fontSize: screenWidth(9.14),
                                    ),
                                    CustomText(
                                      text: '1',
                                      styleType: TextStyleType.CUSTOM,
                                      fontWeight: FontWeight.bold,
                                      textColor: AppColors.maingreenColor,
                                      fontSize: screenWidth(9.14),
                                    ),
                                  ],
                                ),
                                CustomText(
                                  text: 'الجولة',
                                  textColor: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: '23',
                                  textColor: AppColors.whiteColor,
                                  styleType: TextStyleType.SUBTITLE,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                top: screenWidth(8.22),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: screenWidth(5.87),
                                    height: screenWidth(5.87),
                                    decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                    text: 'الكرامة',
                                    styleType: TextStyleType.CUSTOM,
                                    textColor: AppColors.whiteColor,
                                    fontSize: screenWidth(15.82),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //! *********************************************************** */

            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(27.42),
                bottom: screenWidth(27.42),
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    showTable10 = !showTable10;
                  });
                },
                child: Container(
                  height: screenWidth(8.22),
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      text: showTable10 ? 'إخفاء الجدول' : 'عرض الجدول',
                      styleType: TextStyleType.SUBTITLE,
                      textColor: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/pngs/layer2.png',
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: screenWidth(20.57),
                    start: screenWidth(13.71),
                  ),
                  child: CustomText(
                    text: 'جدول ترتيب الفرق الدوري السوري  2024/2023',
                    styleType: TextStyleType.SUBTITLE,
                    textColor: AppColors.whiteColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: screenWidth(7.09),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: AppColors.maingreyColor,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: screenWidth(20.57),
                        bottom: screenWidth(20.57),
                      ),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: showTable10 == true ? 16 : 6,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            // الصف الأول: تثبيت الصف الأول
                            return TabelHeader();
                          } else {
                            // الصفوف الباقية: إرسال قيم في الصفوف الباقية
                            return TabelContent(
                              ranking: '$index',
                              clubName: ' يوسف $index',
                              game: '$index',
                              win: '$index',
                              draw: '$index',
                              lost: '$index',
                              points: '$index',
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: screenWidth(8.22),
            ),
          ],
        ),
      ),
    );
  }
}
