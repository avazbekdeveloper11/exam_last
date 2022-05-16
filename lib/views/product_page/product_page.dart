import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/color_constant.dart';
import 'package:exam_last/core/constant/path_constant.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:exam_last/views/product_page/_widgets/app_bar.dart';
import 'package:exam_last/views/product_page/_widgets/product_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return productScaffold(context);
  }

  Scaffold productScaffold(BuildContext context) {
    return Scaffold(
      appBar: const ProductAppBar().build(context),
      body: const ProductBuilder(),
    );
  }
}
