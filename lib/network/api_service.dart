import 'dart:io';
import 'package:Assignment_Flutter/network/api_base_helper.dart';
import 'package:Assignment_Flutter/network/api_constants.dart';
import 'package:dio/dio.dart';

/// write your all API Async requests here
class ApiService {
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();

  Future<Response> employeeList() {
    return apiBaseHelper.get(ApiConstants.employeeDetails);
  }
}

///Single final Object of API Service
final apiServiceInstance = ApiService();
