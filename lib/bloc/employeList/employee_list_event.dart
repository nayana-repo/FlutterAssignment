part of 'employee_list_bloc.dart';

abstract class EmployeeListEvent {
  const EmployeeListEvent();

  @override
  List<Object> get props => [];
}

class LoadEmployeeList extends EmployeeListEvent {
  @override
  String toString() => 'LoadEmployeeList';
}

class InitiateEmployeeSearch extends EmployeeListEvent {
  final String searchString;

  InitiateEmployeeSearch(this.searchString);

  @override
  List<Object> get props => [searchString];
}

class EmployeeListLoadingSuccess extends EmployeeListEvent {
  final EmployeeDetailsResponse employeeList;

  EmployeeListLoadingSuccess({@required this.employeeList});

  @override
  List<Object> get props => [employeeList];
}

class EmployeeListLoadingFailed extends EmployeeListEvent {
  final Error error;

  EmployeeListLoadingFailed({@required this.error});
}
