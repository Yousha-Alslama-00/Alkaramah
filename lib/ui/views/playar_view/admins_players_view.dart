// import 'package:alkaramah/ui/shared/colors.dart';
// import 'package:alkaramah/ui/shared/custom_widgets/custom_player.dart';
// import 'package:alkaramah/ui/shared/custom_widgets/custom_text.dart';
// import 'package:alkaramah/ui/shared/utils.dart';
// import 'package:flutter/material.dart';

// class AdminsPlayersView extends StatelessWidget {
//   const AdminsPlayersView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsetsDirectional.only(
//           start: screenWidth(20.5714),
//           end: screenWidth(20.5714),
//         ),
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             SizedBox(
//               height: 80,
//             ),
//             Container(
//               height: screenWidth(2.5714),
//               decoration: BoxDecoration(),
//               child: Stack(
//                 children: [
//                   Container(
//                     margin: EdgeInsetsDirectional.only(
//                       top: screenWidth(9.1428),
//                     ),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           'assets/images/pngs/background_rectangle.png',
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: screenWidth(2.057),
//                         height: screenWidth(2.057),
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage(
//                               'assets/images/pngs/ahed-khuzam.png',
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.only(
//                           top: screenWidth(10.28),
//                         ),
//                         child: CustomText(
//                           text: 'رئيس نادي الكرامة : \nالدكتور عهد خزام',
//                           styleType: TextStyleType.TITLE,
//                           textColor: AppColors.whiteColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             CustomText(
//               text: 'ملابس فريق نادي الكرامة لعام 2023-2024',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               width: screenWidth(2.057),
//               height: screenWidth(2.057),
//               decoration: BoxDecoration(
//                 color: AppColors.blueColor,
//                 borderRadius: BorderRadius.circular(20),
//                 image: DecorationImage(
//                   image: AssetImage(
//                     'assets/images/pngs/shirt.png',
//                   ),
//                 ),
//               ),
//             ),
//             CustomText(
//               text: 'الاداريين',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               margin: EdgeInsetsDirectional.only(
//                 top: screenWidth(41.1428),
//               ),
//               height: screenHeight(3.3),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(41.1428),
//                   end: screenWidth(41.1428),
//                 ),
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemExtent: 180,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CustomAdminsPlayers(
//                       adminsPlayers: true,
//                       image: 'https://picsum.photos/200/300',
//                       name: 'Yousha',
//                       job: 'مدير عام',
//                     );
//                   },
//                 ),
//               ),
//             ),
//             CustomText(
//               text: 'مدربو الفريق',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               margin: EdgeInsetsDirectional.only(
//                 top: screenWidth(41.1428),
//               ),
//               height: screenHeight(3.3),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(41.1428),
//                   end: screenWidth(41.1428),
//                 ),
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemExtent: 180,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CustomAdminsPlayers(
//                       adminsPlayers: true,
//                       image: 'https://picsum.photos/200/300',
//                       name: 'Yousha',
//                       job: 'موظف بالاجبار',
//                     );
//                   },
//                 ),
//               ),
//             ),
//             CustomText(
//               text: 'حراس المرمى',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               margin: EdgeInsetsDirectional.only(
//                 top: screenWidth(41.1428),
//               ),
//               height: screenHeight(3.3),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(41.1428),
//                   end: screenWidth(41.1428),
//                 ),
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemExtent: 180,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CustomAdminsPlayers(
//                       adminsPlayers: false,
//                       color: AppColors.mainyellowColor,
//                       image: 'https://picsum.photos/200/300',
//                       name: 'ابو مفلح عازار',
//                       age: '10',
//                       length: '180',
//                       nyumber: '15',
//                       playerPosition: 'CM',
//                     );
//                   },
//                 ),
//               ),
//             ),
//             CustomText(
//               text: 'المدافعون',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               margin: EdgeInsetsDirectional.only(
//                 top: screenWidth(41.1428),
//               ),
//               height: screenHeight(3.3),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(41.1428),
//                   end: screenWidth(41.1428),
//                 ),
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemExtent: 180,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CustomAdminsPlayers(
//                       adminsPlayers: false,
//                       image: 'https://picsum.photos/200/300',
//                       name: 'ابو مفلح عازار',
//                       age: '10',
//                       length: '180',
//                       nyumber: '15',
//                       playerPosition: 'CM',
//                     );
//                   },
//                 ),
//               ),
//             ),
//             CustomText(
//               text: 'خط الوسط',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               margin: EdgeInsetsDirectional.only(
//                 top: screenWidth(41.1428),
//               ),
//               height: screenHeight(3.3),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(41.1428),
//                   end: screenWidth(41.1428),
//                 ),
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemExtent: 180,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CustomAdminsPlayers(
//                       adminsPlayers: false,
//                       image: 'https://picsum.photos/200/300',
//                       name: 'ابو مفلح عازار',
//                       age: '10',
//                       length: '180',
//                       nyumber: '15',
//                       playerPosition: 'CM',
//                     );
//                   },
//                 ),
//               ),
//             ),
//             CustomText(
//               text: 'المهاجمون',
//               styleType: TextStyleType.TITLE,
//             ),
//             Container(
//               margin: EdgeInsetsDirectional.only(
//                 top: screenWidth(41.1428),
//               ),
//               height: screenHeight(3.3),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(41.1428),
//                   end: screenWidth(41.1428),
//                 ),
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemExtent: 180,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CustomAdminsPlayers(
//                       adminsPlayers: false,
//                       image: 'https://picsum.photos/200/300',
//                       name: 'ابو مفلح عازار',
//                       age: '10',
//                       length: '180',
//                       nyumber: '15',
//                       playerPosition: 'CM',
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
