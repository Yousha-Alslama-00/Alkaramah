import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class TabelHeader extends StatelessWidget {
  const TabelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: FractionColumnWidth(0.12),
          1: FractionColumnWidth(0.2),
          2: FractionColumnWidth(0.12),
          3: FractionColumnWidth(0.12),
          4: FractionColumnWidth(0.12),
          5: FractionColumnWidth(0.12),
          6: FractionColumnWidth(0.12),
        },
        children: [
          TableRow(
            children: [
              Center(
                child: Text(
                  'ترتيب',
                  style: TextStyle(
                    fontSize: screenWidth(22.85),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'الفريق',
                  style: TextStyle(
                    fontSize: screenWidth(22.85),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'لعب',
                  style: TextStyle(
                    fontSize: screenWidth(22.85),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(
                      width: screenWidth(102.857),
                      color: Colors.green,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'فاز',
                    style: TextStyle(
                      fontSize: screenWidth(22.85),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(
                      width: screenWidth(102.857),
                      color: Colors.blue,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'تعادل',
                    style: TextStyle(
                      fontSize: screenWidth(22.85),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(
                      width: screenWidth(102.857),
                      color: Colors.red,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'خسر',
                    style: TextStyle(
                      fontSize: screenWidth(22.85),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'النقاط',
                  style: TextStyle(
                    fontSize: screenWidth(22.85),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
