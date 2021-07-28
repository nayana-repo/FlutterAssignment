part of 'employee_details_bloc.dart';

abstract class EmployeeDetailsEvent {
  const EmployeeDetailsEvent();

  @override
  List<Object> get props => [];
}

class LoadEmployeeList extends EmployeeDetailsEvent {
  @override
  String toString() => 'LoadEmployeeList';
}

class EmployeeDetailsLoadingSuccess extends EmployeeDetailsEvent {
  final EmployeeDetails employeeDetails;

  EmployeeDetailsLoadingSuccess({@required this.employeeDetails});

  @override
  List<Object> get props => [employeeDetails];
}

class EmployeeDetailsLoadingFailed extends EmployeeDetailsEvent {
  final Error error;

  EmployeeDetailsLoadingFailed({@required this.error});
}
