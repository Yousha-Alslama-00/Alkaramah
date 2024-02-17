import 'package:alkaramah/ui/shared/custom_widgets/custom_player.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CuatomPlayerSubstitutions extends StatelessWidget {
  final Color? color;
  final String? name;
  final String? job;
  final String? image;
  final String? age;
  final String? length;
  final String? nyumber;
  final String? playerPosition;

  const CuatomPlayerSubstitutions(
      {super.key,
      this.color,
      this.name,
      this.job,
      this.image,
      this.age,
      this.length,
      this.nyumber,
      this.playerPosition});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: screenWidth(2.2),
          height: screenWidth(1.58),
          child: CustomAdminsPlayers(
            adminsPlayers: false,
            image: image ?? '',
            name: name ?? '',
            age: age ?? '',
            length: length ?? '',
            nyumber: nyumber ?? '',
            playerPosition: playerPosition ?? '',
          ),
        ),
        Image.asset(
          'assets/images/pngs/vector.png',
          width: 30,
        ),
        Container(
          width: screenWidth(2.2),
          height: screenWidth(1.58),
          child: CustomAdminsPlayers(
            adminsPlayers: false,
            image: image ?? '',
            name: name ?? '',
            age: age ?? '',
            length: length ?? '',
            nyumber: nyumber ?? '',
            playerPosition: playerPosition ?? '',
          ),
        ),
      ],
    );
  }
}
