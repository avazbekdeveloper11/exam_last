import 'package:dio/dio.dart';
import 'package:exam_last/core/constant/path_constant.dart';

class Service {
  static var path;

  static Future getData() async {
    final path = 'category';
    Response res =
        await Dio().get(PathConstant.instance.urlAPI + "path/?populate=*");
    return (res.data['data'] as List);
  }
}
