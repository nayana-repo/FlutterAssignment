import 'package:Assignment_Flutter/network/api_response.dart';
import 'package:Assignment_Flutter/network/calls/employee_details_call.dart';
import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:rxdart/src/subjects/behavior_subject.dart';

class EmployeeRepository {
  static final EmployeeRepository _instance = EmployeeRepository._internal();

  factory EmployeeRepository() => _instance;

  EmployeeRepository._internal();

  static final BehaviorSubject<ApiResponse<EmployeeDetailsResponse>>
      _subjectEmployeeList =
      BehaviorSubject<ApiResponse<EmployeeDetailsResponse>>();

  dispose() {
    _subjectEmployeeList.close();
  }

  executeEmployeeListCall(BehaviorSubject<EmployeeDetailsResponse> response) {
    new EmployeeDetailsCall(response, _subjectEmployeeList).execute();
  }
}
