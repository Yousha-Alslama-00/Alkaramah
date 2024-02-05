import 'package:alkaramah/ui/shared/custom_widgets/custom_app_bar.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_container_horizontal.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_container_vertical.dart';
import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClubHistoryView extends StatelessWidget {
  const ClubHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          title: 'تاريخ النادي',
        ),
        preferredSize: Size.fromHeight(75),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(
                end: screenWidth(1.24),
              ),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: screenWidth(11.75),
                ),
              ),
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerHorizontal(
              image: 'alkaramah_1',
              textQuestion: 'متى تأسس نادي الكرامة؟',
              textObject:
                  'تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص في سورية وكان يعرف بنادي خالدبن الوليد في ذلك الوقت وفي  عام 1972تم دمج النادي مع العديد من الاندية الاخرى وهي نادي الوحدةونادي الطلائع و نادي التضامن و نادي الجهاد و اطلق عليه أنذاك اسم نادي الكرامة وهذا الاسم مازال يستخدم حتى اليوم .',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerVertical(
              image: 'alkaramah_2',
              textQuestion: 'من هو مؤسس نادي الكرامة ؟',
              textObject:
                  ' الأستاذ ساطع أتاسي مؤسس  نادي الكرامة السوري، ويُعتبر أيضا  الأب الروحي للنادي.',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerHorizontal(
              image: 'alkaramah_3',
              textQuestion: 'كيف جاءت فكرة تأسيس نادي الكرامة :',
              textObject:
                  'جاءت فكرة تأسيس النادي من قِبل مجموعة من شباب  مدينة حمص الذين مارسوا رياضة كرة القدم وفكروا  بطريقة جدية في تأسيس نادي ليجمعهم جميعا وبناء على ذلك جاءت فكرة التأسيس.',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerHorizontal(
              image: 'alkaramah_4',
              textQuestion: 'ما هو الملعب الرسمي لنادي الكرامة :',
              textObject:
                  'يُعَدُّ ملعب خالد بن الوليد، الذي تأسس في عام 1960 ، هو  الملعب الرسمي لنادي حمص الريا ضي. يقع الملعب في  مدينة حمص ويُعَدُّ ثاني أحدث الملاعب في سوريابعد ملعب  حلب الدولي يتسع الملعب لحوالي 38000 متفرج، ويُعرَفُ هذا  الملعب بلقب “مقبرة الفرق” وذلك لأنه من الصعب جدًا هزيمة نادي الكرامة فيه. كما استضاف الملعب نهائي دوري أبطال آسيا في عام 2006',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerVertical(
              image: 'alkaramah_5',
              textQuestion: 'ما هي اول بطولة حصل عليها نادي الكرامة :',
              textObject:
                  'في الخامس والعشرين من نيسان عام 1948م فاز نادي الكرامةالسوري بأول بطولة في تاريخه حيث تغلب عل منتخب حلب بنتيجةهدفين مقابل هدف مقابل هدف واحد .',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerHorizontal(
              image: 'alkaramah_6',
              textQuestion: 'السمعة الخارجية لنادي الكرامة :',
              textObject:
                  'السمعة العربية والآسيوية القاريّة، حققها نادي الكرامة عندما  خاض بطولة الأندية العربية بحمص عام 1985 1985 إلى جانب  النجمة اللبناني والفيصلي الأردنّي ومشاركته بدورة الملك حسين  بالأردن في عام 1987 ولقائه مع الهلال السعودي في تصفيات دوري الأندية الآسيوية أبطال الكؤوس سنة 2000 , وكذلك الأمر مع الزمالك المصريّ في تصفيات دوري أبطال العرب عام 2004 كما شارك بدورات عربية مختلفة في العراق والأردن ومصر  ونافس على ألقابها وكان الإنجاز الأكبر بوصوله للمرة الأولى بتاريخه وتاريخ  لكرة السورية إلى المباراة النهائية  لدوري أبطال آسيا وخسر اللقب في اللحظات الأخيرة أمام تشونبوك الكوري بعد خسارته في كوريا الجنوبية وفوزه في حمص. يعدّ فريق الكرامة الفريق الآسيوي الوحيد الذي يشارك في دوري أبطال آسيا بنظامها الجديد لثلاث مرات متتالية ويتأهل في جميعها لدور الثمانية الكبار على الأقل و في عام 2009 شارك النادي في كأس الاتحاد الآسيوي لأسباب نظيمية ومادية وقد وصل إلى نهائي لبطولة ليواجه نادي الكويت في مباراة واحدة في ملعب نادي الكويت ويخسر المباراة بعد عدة وعوامل أثرت على مستوى الفريق في تلك البطولة كما يلعب أبناء النادي من كوادر فنية وتدريبيّة و خبرات ولاعبين ممن يعمل في الدول العربية دوراً مهما في المحافظة على السمعة العطرة لهاذا  النادي وقد خرّج النادي عدة لاعبين متميزين يعدّون نجوم فرقهم حاليا ومنهم :',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerVertical(
              widthContainer: true,
              image: 'alkaramah_7',
              textObject:
                  '• جهاد الحسين \n• فراس الخطيب \n• توفيق طيارة \n• علاء الشبلي \n• مصعب بلحوس \n• عاطف جنيات \n',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: screenWidth(41.1428),
              ),
              child: CustomText(
                text: 'كرة السلة في نادي الكرامة :',
                styleType: TextStyleType.TITLE,
              ),
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
            CustomContainerHorizontal(
              image: 'alkaramah_8',
              textObject:
                  'تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص في سورية وكان يعرف بنادي خالدبن الوليد في ذلك الوقت وفي  عام 1972تم دمج النادي مع العديد من الاندية الاخرى وهي نادي الوحدةونادي الطلائع و نادي التضامن و نادي الجهاد و اطلق عليه أنذاك اسم نادي الكرامة وهذا الاسم مازال يستخدم حتى اليوم .',
            ),
            SizedBox(
              height: screenWidth(41.1428),
            ),
          ],
        ),
      ),
    );
  }
}
