import 'package:Assignment_Flutter/network/api_response.dart';
import 'package:Assignment_Flutter/network/data_fetch_call.dart';
import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:dio/src/response.dart';
import 'package:rxdart/src/subjects/behavior_subject.dart';

import '../api_service.dart';

class EmployeeDetailsCall extends DataFetchCall<EmployeeDetailsResponse> {
  BehaviorSubject<EmployeeDetailsResponse> response;

  EmployeeDetailsCall(
      this.response,
      BehaviorSubject<ApiResponse<EmployeeDetailsResponse>>
          subjectMyOverviewDetails)
      : super(subjectMyOverviewDetails);

  @override
  Future<Response> createApiAsync() {
    /// need to return APIService async task for API request
    return apiServiceInstance.employeeList();
  }

  @override
  void onFailure(Error error) {
    if (this.response.isClosed == false) {
      this.response.addError(error);
    }
  }

  @override
  void onSuccess(EmployeeDetailsResponse response) {
    if (this.response.isClosed == false) {
      this.response.add(response);
    }
  }

  @override
  EmployeeDetailsResponse parseJson(Response response) {
    return EmployeeDetailsResponse.fromJson(response.data);
  }
 /* @override
  List<EmployeeDetailsResponse> parseJson(Response<dynamic> response) {
    List<dynamic> list;

    if (response.data is List) {
      final personList = response.data
          .map((e) => EmployeeDetailsResponse.fromJson(e))
          .toList();
      //list.addAll(personList);
      return personList;
    }
  }*/
}
