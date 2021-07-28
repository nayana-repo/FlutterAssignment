import 'package:Assignment_Flutter/network/model/employee_details_response.dart';

class CacheManager {
  static CacheManager _instance;

  factory CacheManager() => _instance ??= new CacheManager._();

  void init() {}

  CacheManager._();


  List<EmployeeDetails> cachedEmployeeList;
}
