import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/path_constant.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: getWidht(16), vertical: 10),
      itemBuilder: (_, __) {
        return Padding(
          padding: EdgeInsets.only(bottom: getHeight(12)),
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, "/video_screen"),
            child: Container(
              height: getHeight(140),
              decoration: BoxDecoration(
                color: ColorConst.instance.kProductCartWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: getWidht(140),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://source.unsplash.com/random/$__",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidht(12),
                      top: getHeight(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getWidht(170),
                          child: Text(
                            "UX/UI nima? Soha haqida umumiy tushuncha.",
                            style: StyleConst.instance.styleBold(14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getHeight(4),
                            bottom: getHeight(26),
                          ),
                          child: Text(
                            "Abbos Xazratov",
                            style: StyleConst.instance.styleSmall(13),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "2 kun oldin yuklandi",
                              style: StyleConst.instance.styleSmall(13),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: getWidht(28)),
                              child: IconButton(
                                splashRadius: 25,
                                icon: SvgPicture.asset(
                                  PathConstant.instance.play,
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
