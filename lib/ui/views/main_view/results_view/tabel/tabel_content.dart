import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class TabelContent extends StatelessWidget {
  final String? ranking;
  final String? clubName;
  final String? game;
  final String? win;
  final String? draw;
  final String? lost;
  final String? points;

  const TabelContent({
    super.key,
    this.ranking,
    this.clubName,
    this.game,
    this.win,
    this.draw,
    this.lost,
    this.points,
  });

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
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(82.28)),
                child: Center(
                  child: Text(
                    ranking ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(205.714)),
                child: Center(
                  child: Text(
                    clubName ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(82.28)),
                child: Center(
                  child: Text(
                    game ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(82.28)),
                child: Center(
                  child: Text(
                    win ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(82.28)),
                child: Center(
                  child: Text(
                    draw ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(82.28)),
                child: Center(
                  child: Text(
                    lost ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(82.28)),
                child: Center(
                  child: Text(
                    points ?? '',
                    style: TextStyle(
                      fontSize: screenWidth(25.71),
                    ),
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
