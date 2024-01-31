import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/club_presidents.dart';
import 'package:alkaramah/ui/shared/custom_widgets/club_titles.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_container_meusiam.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_container_youtube.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class MeusiamView extends StatelessWidget {
  final List<String> items = [
    'alkaramah_1',
    'alkaramah_2',
    'alkaramah_3',
    'alkaramah_4',
    'alkaramah_5',
    'alkaramah_6',
    'alkaramah_7',
    'alkaramah_8',
  ];
  final List<String> items2 = [
    'متى تأسس نادي الكرامة؟',
    'من هو مؤسس نادي الكرامة',
    'كيف جاءت فكرة تأسيس نادي الكرامة ',
    'ما هو الملعب الرسمي لنادي الكرامة ',
    'ما هي أول بطولة حصل عليها نادي الكرامة',
    'السمعة الخارجية لنادي الكرامة ',
    'لاعبين متميزين يعدّون نجوم فرقهم',
    'كرة السلة في نادي الكرامة ',
  ];

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
            CustomText(
              text: 'عن النادي',
              styleType: TextStyleType.TITLE,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(4),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: 340,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(
                        end: screenWidth(41.1428),
                      ),
                      child: CustomContainerMeusiam(
                        text: items2[index].toString(),
                        nameImage: items[index],
                        containerWidth: true,
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(20.5714),
                bottom: screenWidth(20.5714),
              ),
              child: Container(
                width: screenWidth(1),
                height: screenWidth(1.3714),
                decoration: BoxDecoration(
                  color: AppColors.mainblueColor,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            CustomText(
              text: 'رؤساء نادي الكرامة',
              styleType: TextStyleType.TITLE,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
                bottom: screenWidth(20.5714),
              ),
              height: screenHeight(3.5),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 16.0), // تحديد المسافة بين العناصر
                itemBuilder: (BuildContext context, int index) {
                  return ClubPresidents(
                    textName: 'textName',
                    networkImage:
                        'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                  );
                },
              ),
            ),
            CustomText(
              text: 'ألقاب نادي الكرامة',
              styleType: TextStyleType.TITLE,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
                bottom: screenWidth(20.5714),
              ),
              height: screenHeight(3.1),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 16.0), // تحديد المسافة بين العناصر
                itemBuilder: (BuildContext context, int index) {
                  return ClubTitles(
                    networkImage:
                        'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                    textTitles: 'AAAAAAAAAa',
                  );
                },
              ),
            ),
            CustomText(
              text: 'الجوائز الفردية للاعبي  الكرامة',
              styleType: TextStyleType.TITLE,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(
                top: screenWidth(41.1428),
              ),
              height: screenHeight(4),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: screenWidth(41.1428),
                  end: screenWidth(41.1428),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemExtent: screenWidth(2.571),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(
                        end: screenWidth(41.1428),
                      ),
                      child: CustomContainerMeusiam(
                        text: 'lll',
                        nameImage: '',
                        containerWidth: false,
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(40.2857),
              ),
              child: Container(
                height: screenWidth(3.1648),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.only(
                        end: screenWidth(41.1428),
                      ),
                      child: CustomContainerYoutube(
                        text: '222',
                        networkImage:
                            'https://th.bing.com/th/id/R.1395d1b17397018e6916784c283a14f2?rik=bmfmSW7odc2D1A&pid=ImgRaw&r=0',
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}