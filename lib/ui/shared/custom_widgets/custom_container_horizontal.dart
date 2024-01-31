import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomContainerHorizontal extends StatelessWidget {
  final String? textQuestion;
  final String? textObject;
  final String image;
  const CustomContainerHorizontal({
    super.key,
    this.textQuestion,
    this.textObject,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    return Center(
      child: Container(
        width: screenWidth(1.082),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenWidth(2.057),
              decoration: BoxDecoration(
                color: AppColors.maingreyColor,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/pngs/$image.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            CustomText(
              text: textQuestion ?? '',
              styleType: TextStyleType.TITLE,
            ),
            CustomText(
              text: textObject ?? '',
              styleType: TextStyleType.BODY,
            ),
          ],
        ),
      ),
    );
  }
}

/***
 
Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenWidth(2.236),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: screenWidth(41.142),
          ),
          CustomText(
            text: 'متى تأسس نادي الكرامة؟',
            styleType: TextStyleType.TITLE,
          ),
          SizedBox(
            height: screenWidth(41.142),
          ),
          CustomText(
            text:
                'تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص',
            styleType: TextStyleType.SUBTITLE,
          ),
        ],
      ),

 */