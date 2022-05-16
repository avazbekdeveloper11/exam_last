import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/material.dart';

class FilterBuilder extends StatelessWidget {
  const FilterBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(24)),
      child: SizedBox(
        height: getHeight(95),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) {
            return Padding(
              padding: EdgeInsets.only(left: getWidht(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getHeight(72),
                    height: getHeight(71),
                    decoration: BoxDecoration(
                      color: ColorConst.instance.kProductCartWhite,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Text(
                    "Dizayn",
                    style: StyleConst.instance.styleMiddle(14),
                  )
                ],
              ),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
