import 'package:cached_network_image/cached_network_image.dart';
import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/material.dart';

class CoursesBuilder extends StatelessWidget {
  List data;
  CoursesBuilder({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: getWidht(16)),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: getHeight(211),
          mainAxisSpacing: 11,
          crossAxisCount: 1,
        ),
        itemBuilder: (_, __) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConst.instance.kProductCartWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              data[__]['attributes']['img_url'][0]['url'],
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: ColorConst.instance.kGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[__]["attributes"]['name'],
                              style: StyleConst.instance.styleBold(14),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: getHeight(4),
                              ),
                              child: Text(
                                data[__]["attributes"]['subtitle'],
                                style: StyleConst.instance.styleSmall(12),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.sentiment_satisfied_outlined,
                                  color: ColorConst.instance.kBlue,
                                ),
                                Text(
                                  "  " + data[__]['attributes']['percent'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: ColorConst.instance.kBlue,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: () => Navigator.pushNamed(
              context,
              "/product_screen",
              arguments: data[__]['attributes']['lesson'],
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
