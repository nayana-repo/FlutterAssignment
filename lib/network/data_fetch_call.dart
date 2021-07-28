import 'package:Assignment_Flutter/network/api_response.dart';
import 'package:Assignment_Flutter/network/error_handler.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

abstract class DataFetchCall<ResultType> {
  Future<Response> createApiAsync();

  void onSuccess(ResultType response);

  void onFailure(Error error);

  ResultType parseJson(Response response);

  BehaviorSubject<ApiResponse<ResultType>> observable;

  DataFetchCall(BehaviorSubject<ApiResponse<ResultType>> observable) {
    this.observable = observable;
  }

  void execute() {
    if (observable.isClosed == false) {
      observable.sink.add(ApiResponse.loading<ResultType>());
    }
    _getResponse().then((onValue) {
      if (observable.isClosed == false) {
        observable.sink.add(onValue);
      }
    });
  }

  // ignore: missing_return
  Future<ApiResponse<ResultType>> _getResponse() async {
    try {
      Response response = await createApiAsync();
      if (response != null && response.data != null) {
        if (response.data != "") {
          ResultType responseModel = parseJson(response);
          onSuccess(responseModel);
          return ApiResponse.success<ResultType>(responseModel);
        } else {
          if (response.statusMessage == "No Content") {
            onSuccess(null);
            return ApiResponse.success<ResultType>(null);
          }
        }
      } else {
        return ApiResponse.failed<ResultType>(Error(response.statusCode,
            response.data["message"], response.data["status"]));
      }
    } catch (error) {
      String errorDescription = ErrorHandler().handleError(error);
      DioError nError = error;
      if (nError.response != null) {
        if (nError.response.statusCode == 401) {
        } else {
          onFailure(Error(500, errorDescription, errorDescription));
          return ApiResponse.failed<ResultType>(
              Error(500, errorDescription, errorDescription));
        }
      } else {
        onFailure(Error(500, errorDescription, errorDescription));
        return ApiResponse.failed<ResultType>(
            Error(500, errorDescription, errorDescription));
      }
    }
  }

  Future executeDetailsCall() async {
    observable.sink.add(ApiResponse.loading<ResultType>());
    return await _getResponse().then((onValue) {
      return onValue;
    });
  }
}
