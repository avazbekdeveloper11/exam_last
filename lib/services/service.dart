import 'package:dio/dio.dart';
import 'package:exam_last/core/constant/path_constant.dart';

class Service {
  static Future getData() async {
    Response res = await Dio().get(PathConstant.instance.urlAPI);
    return res.data['data'];
  }
}
