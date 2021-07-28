import 'package:dio/dio.dart';

class AppInterceptor extends Interceptor {
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    ///get Saved AuthToken
    var token = "";
    if (token != null)
      options.headers.addAll({"Authorization": "Bearer " + token});
    return options;
  }

  @override
  Future<dynamic> onError(DioError dioError) {
    if (dioError.message.contains("Unauthorized")) {
      return super.onError(dioError);
    }
  }
}
