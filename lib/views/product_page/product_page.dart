import 'package:exam_last/views/product_page/_widgets/app_bar.dart';
import 'package:exam_last/views/product_page/_widgets/product_builder.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final lessons;
  const ProductPage({
    Key? key,
    required this.lessons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return productScaffold(context);
  }

  Scaffold productScaffold(BuildContext context) {
    return Scaffold(
      appBar: ProductAppBar(name: lessons['name']).build(context),
      body: ProductBuilder(lessons: lessons),
    );
  }
}
