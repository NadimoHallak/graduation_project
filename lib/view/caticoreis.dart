import 'package:flutter/material.dart';
import 'package:graduation_project/constant/color.dart';
import 'package:graduation_project/constant/font_size.dart';
import 'package:graduation_project/constant/font_style.dart';
import 'package:graduation_project/widget/home/grid_tile.dart';

class Ctigories extends StatelessWidget {
  const Ctigories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.0.wp,
            right: 4.0.wp,
            bottom: 4.0.wp,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الأقسام',
                style: myStyle(
                  textSize: 25,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: const [
              MyGridTile(color: white, catigorieName: 'الدخل'),
              MyGridTile(color: white, catigorieName: 'الإلتزامات'),
              MyGridTile(color: white, catigorieName: 'الترفيه'),
              MyGridTile(color: white, catigorieName: 'المصروف'),
              MyGridTile(color: white, catigorieName: 'المدخرات'),
              MyGridTile(color: lightPurple, catigorieName: 'إضافة قسم'),
            ],
          ),
        )
      ],
    );
  }
}
