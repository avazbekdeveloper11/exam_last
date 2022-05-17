import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/path_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductAppBar extends StatelessWidget {
  String name;
  ProductAppBar({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: ColorConst.instance.kWhite,
      leading: IconButton(
        splashRadius: 25,
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back, color: ColorConst.instance.kBlack),
      ),
      title: Text(
        name,
        style: StyleConst.instance.styleBold(25),
      ),
      actions: [
        IconButton(
          splashRadius: 25,
          onPressed: () {},
          icon: SvgPicture.asset(PathConstant.instance.message),
        ),
      ],
    );
  }
}
