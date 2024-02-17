import 'package:alkaramah/ui/shared/colors.dart';
import 'package:alkaramah/ui/shared/utils.dart';
import 'package:flutter/material.dart';

class CustomNews extends StatelessWidget {
  final double? heightContainer;
  final String? text;
  const CustomNews({
    super.key,
    this.heightContainer,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1.12),
      height: heightContainer ?? screenWidth(3.5),
      decoration: BoxDecoration(
        color: Color.fromARGB(94, 149, 168, 207),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth(3),
            height: screenWidth(3.5),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/pngs/Rectangle 109.png",
                ),
              ),
              color: AppColors.mainblueColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            width: screenWidth(1.8),
            height: screenWidth(3.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    screenWidth(100.42),
                  ),
                  child: Text(
                    "نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الريا",
                    style: TextStyle(
                      fontSize: screenWidth(27.4),
                    ),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: screenWidth(20.1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          size: screenWidth(20),
                        ),
                        Text(
                          " 300 ",
                          style: TextStyle(
                            fontSize: screenWidth(30),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: screenWidth(22),
                        ),
                        Text(
                          " 4 ",
                          style: TextStyle(
                            fontSize: screenWidth(30),
                          ),
                        ),
                        Text(
                          "أيام",
                          style: TextStyle(
                            fontSize: screenWidth(30),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
