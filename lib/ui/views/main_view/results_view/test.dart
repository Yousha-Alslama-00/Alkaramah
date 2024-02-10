// import 'package:flutter/material.dart';

// class DataTablePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TableRow _tabelRow = const TableRow(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(child: Text('ترتيب')),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(child: Text('الفريق')),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(
//             child: Text(
//               'لعب',
//               style: TextStyle(
//                 decoration: TextDecoration.underline,
//                 decorationColor: Colors.red,
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(child: Text('فاز')),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(child: Text('تعادل')),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(child: Text('خسر')),
//         ),
//         Padding(
//           padding: EdgeInsetsDirectional.only(
//             top: 10,
//             bottom: 10,
//           ),
//           child: Center(child: Text('نقاط')),
//         ),
//       ],
//     );

//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Football Standings'),
//         ),
//         body: Column(
//           children: [
//             Table(
//               border: TableBorder.all(),
//               defaultColumnWidth: FixedColumnWidth(50),
//               children: <TableRow>[
//                 _tabelRow,
//               ],
//               columnWidths: {
//                 0: FractionColumnWidth(0.12),
//                 1: FractionColumnWidth(0.21),
//                 2: FractionColumnWidth(0.13),
//                 3: FractionColumnWidth(0.13),
//                 4: FractionColumnWidth(0.13),
//                 5: FractionColumnWidth(0.13),
//                 6: FractionColumnWidth(0.13),
//                 7: FractionColumnWidth(0.13),
//               },
//             ),
//           ],
//         ));
//   }
// }

