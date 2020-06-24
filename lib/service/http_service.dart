import 'package:dio/dio.dart';
import 'package:shop/index_config.dart';
import 'package:shop/util/toast_util.dart';

/**
 * post请求
 */
// ignore: non_constant_identifier_names
Future request(url, {FormData}) async {
  try {
    Response response;
    Dio dio = new Dio();
    BaseOptions options = BaseOptions(
      baseUrl: KHttpService.baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
      contentType: "application/x-www-form-urlencoded",
      responseType: ResponseType.plain,
    );
    dio.options = options;
    dio.interceptors.add(LogInterceptor(responseBody: true)); //开启dio网络请求调试
    if (FormData == null) {
      response = await dio.post(KHttpService.servicePath[url]);
    } else {
      response = await dio.post(KHttpService.servicePath[url], data: FormData);
    }


    if (response.statusCode == 200) {
//      ToastUtil(response.data.toString());
      return response.data;
    } else if (response.statusCode == 404) {
      print(response.statusCode);
      ToastUtil(response.statusCode.toString());
    }
  } catch (e) {
    return print("123123");
  }
}
