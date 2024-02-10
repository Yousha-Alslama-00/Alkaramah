import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({super.key});

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
                top: 20,
                bottom: 20,
              ),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.greyColor2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 15,
                    end: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Image.asset(
                          'assets/images/pngs/ic_rewand.png',
                          width: 20,
                        ),
                      ),
                      Container(
                        width: 90,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: 10,
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
                        width: 90,
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
                            top: 10,
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
                        width: 90,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: 10,
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
              height: 220,
              child: ListView.builder(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemExtent: 375,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: screenWidth(1),
                    height: 220,
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
                                top: 50,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
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
                                    fontSize: 26,
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
                                      fontSize: 20,
                                      textAlign: TextAlign.center,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        top: 30,
                                        start: 55,
                                      ),
                                      child: CustomText(
                                        text: '12:12 عصرا',
                                        styleType: TextStyleType.CUSTOM,
                                        textColor: AppColors.whiteColor,
                                        fontSize: 15,
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
                                      fontSize: 45,
                                    ),
                                    CustomText(
                                      text: '1',
                                      styleType: TextStyleType.CUSTOM,
                                      fontWeight: FontWeight.bold,
                                      textColor: AppColors.maingreenColor,
                                      fontSize: 45,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      // top: 10,
                                      ),
                                  child: CustomText(
                                    text: 'الجولة',
                                    textColor: AppColors.whiteColor,
                                    // styleType: TextStyleType.SUBTITLE,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                top: 50,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
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
                                    fontSize: 26,
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
            SizedBox(
              height: 50,
            ),
            DataTable(
                headingTextStyle: TextStyle(color: Colors.white),
                columnSpacing: 10,
                showBottomBorder: true,
                border: TableBorder.all(color: Colors.grey),
                columns: [
                  DataColumn(label: Text("نقاط")),
                  DataColumn(label: Text("خسر")),
                  DataColumn(label: Text("تعادل")),
                  DataColumn(label: Text("فاز")),
                  DataColumn(label: Text("لعب")),
                  DataColumn(label: Text("الفريق")),
                  DataColumn(label: Text("ترتيب"))
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text("5")),
                      DataCell(Text("2")),
                      DataCell(Text("2")),
                      DataCell(Text("1")),
                      DataCell(Text("5")),
                      DataCell(Text("الجيش")),
                      DataCell(Text("8"))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("5")),
                      DataCell(Text("2")),
                      DataCell(Text("2")),
                      DataCell(Text("1")),
                      DataCell(Text("5")),
                      DataCell(Text("الجيش")),
                      DataCell(Text("8"))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("5")),
                      DataCell(Text("2")),
                      DataCell(Text("2")),
                      DataCell(Text("1")),
                      DataCell(Text("5")),
                      DataCell(Text("الجيش")),
                      DataCell(Text("8"))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("5")),
                      DataCell(Text("2")),
                      DataCell(Text("2")),
                      DataCell(Text("1")),
                      DataCell(Text("5")),
                      DataCell(Text("الجيش")),
                      DataCell(Text("8"))
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("5")),
                      DataCell(Text("2")),
                      DataCell(Text("2")),
                      DataCell(Text("1")),
                      DataCell(Text("5")),
                      DataCell(Text("الجيش")),
                      DataCell(Text("8"))
                    ],
                  ),
                ]),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
