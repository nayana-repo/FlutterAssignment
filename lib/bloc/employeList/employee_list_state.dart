part of 'employee_list_bloc.dart';

abstract class EmployeeListState {
  @override
  List<Object> get props => [];
}

class EmployeeListInitial extends EmployeeListState {
  @override
  String toString() => 'EmployeeListInitial';
}

class EmployeeListLoaded extends EmployeeListState {
  final List<EmployeeDetails> employeeList;

  EmployeeListLoaded(this.employeeList);

  @override
  List<Object> get props => [employeeList];
}

class EmployeeListLoadedLoadingFailed extends EmployeeListState {
  final String error;

  //final int statusCode;

  EmployeeListLoadedLoadingFailed(this.error);

  @override
  List<Object> get props => [error];
}
