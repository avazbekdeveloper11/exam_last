import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/material.dart';

class CoursesBuilder extends StatelessWidget {
  const CoursesBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: getHeight(211),
          mainAxisSpacing: 11,
          crossAxisCount: 1,
        ),
        itemBuilder: (_, __) {
          return InkWell(
            onTap: () => Navigator.pushNamed(context, "/product_screen"),
            child: Container(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
