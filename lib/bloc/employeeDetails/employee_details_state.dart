part of 'employee_details_bloc.dart';

abstract class EmployeeDetailsState {
  @override
  List<Object> get props => [];
}

class EmployeeDetailsInitial extends EmployeeDetailsState {
  @override
  String toString() => 'EmployeeListInitial';
}

class EmployeeDetailsLoaded extends EmployeeDetailsState {
  final List<EmployeeDetails> employeeList;

  EmployeeDetailsLoaded(this.employeeList);

  @override
  List<Object> get props => [employeeList];
}

class EmployeeDetailsLoadedLoadingFailed extends EmployeeDetailsState {
  final String error;

  //final int statusCode;

  EmployeeDetailsLoadedLoadingFailed(this.error);

  @override
  List<Object> get props => [error];
}
