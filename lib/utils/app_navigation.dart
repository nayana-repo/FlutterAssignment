import 'package:Assignment_Flutter/bloc/employeeDetails/employee_details_bloc.dart';
import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:Assignment_Flutter/pages/employeedetails/employee_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppNavigator {
  static navigateToEmployeeDetailsDetails(
      BuildContext context, EmployeeDetails arguments) {
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) => BlocProvider(
                create: (context) =>
                    EmployeeDetailsBloc(EmployeeDetailsInitial()),
                child: EmployeeDetailsPage(arguments),
              )),
    );
  }
}
