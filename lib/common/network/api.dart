import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/app/configuration.dart';
import 'package:flutter_boilerplate/common/network/data_response.dart';

enum RequestType { get, post, put, patch, delete }

class Api {
  factory Api() => _singleton;

  Api._internal();
  final dio = createDio();

  static final _singleton = Api._internal();

  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: networkUrl,
        receiveTimeout: 20000, // 20 seconds
        connectTimeout: 20000,
        sendTimeout: 20000,
      ),
    );

    // dio.interceptors.addAll({
    //   AuthInterceptor(dio),
    // });
    // dio.interceptors.addAll({
    //   Logging(dio),
    // });

    return dio;
  }

  Future<DataResponse<dynamic>> apiCall(
    String url,
    RequestType requestType, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    late Response<dynamic> result;
    try {
      switch (requestType) {
        case RequestType.get:
          {
            final options = Options(headers: header);
            result = await dio.get(
              url,
              queryParameters: queryParameters,
              options: options,
            );
            break;
          }
        case RequestType.post:
          {
            final options = Options(headers: header);
            result = await dio.post(url, data: body, options: options);
            break;
          }
        case RequestType.delete:
          {
            final options = Options(headers: header);
            result = await dio.delete(
              url,
              data: body,
              queryParameters: queryParameters,
              options: options,
            );
            break;
          }
        case RequestType.put:
          final options = Options(headers: header);
          result = await dio.put(
            url,
            data: body,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case RequestType.patch:
          final options = Options(headers: header);
          result = await dio.patch(
            url,
            data: body,
            queryParameters: queryParameters,
            options: options,
          );
          break;
      }
      // if (result != null) {
      final data = result.data as Map<String, dynamic>;
      if (data['isSuccess'] == 1) {
        return DataResponse.success(data['data']);
      } else {
        return DataResponse.error(data['message'].toString());
      }
      // } else {
      //   return DataResponse.error('Data is null');
      // }
    } on DioError catch (error) {
      return DataResponse.error(error.message);
    } catch (error) {
      return DataResponse.error(error.toString());
    }
  }
}

final Map<String, String> header = {
  'Content-type': 'application/json',
  'Accept': 'application/json',
  'client-secret': 'xyz',
  'client-id': 'abc',
  'package-name': 'com.sasa.abc',
  'platform': 'android',
  'Authorization': 'access_token'
};
