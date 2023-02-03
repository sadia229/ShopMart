import 'package:dio/dio.dart';

import '../constants/constants.dart';


class BaseClient {
  static Future<BaseOptions> getBasseOptions() async {
    BaseOptions options = BaseOptions(
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
      headers: {
        "Accept": "application/json",
        'Content-type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
        //'Authorization': 'Bearer ${await storage.read('token')}',
      },
    );
    return options;
  }

  static Future<dynamic> get({required String url, var payload}) async {
    var _dio = Dio(await getBasseOptions());

    var response = await _dio.get(url, queryParameters: payload);
    print('\nURL: $url');
    print('Request Body: $response\n');
    return response;
  }

  static Future<dynamic> post({url, payload}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.post(url, data: payload);
    print('\nURL: $url');
    print('Request Body: $response\n');
    return response;
  }

  static Future<dynamic> postWithQP({url, queryPayload}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.post(url, queryParameters: queryPayload);
    return response;
  }

  static Future<dynamic> put({url, payload}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.put(url, data: payload);
    return response;
  }

  static Future<dynamic> delete({url}) async {
    var _dio = Dio(await getBasseOptions());
    var response = await _dio.delete(url);
    return response;
  }
}
