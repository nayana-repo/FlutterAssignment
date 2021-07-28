import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'employee_details_event.dart';

part 'employee_details_state.dart';

class EmployeeDetailsBloc
    extends Bloc<EmployeeDetailsEvent, EmployeeDetailsState> {
  final BehaviorSubject<EmployeeDetailsResponse> _subjectEmployeeList =
      BehaviorSubject<EmployeeDetailsResponse>();

  EmployeeDetailsBloc(EmployeeDetailsState initialState) : super(initialState);

  dispose() {
    _subjectEmployeeList.close();
  }

  @override
  Stream<EmployeeDetailsState> mapEventToState(
      EmployeeDetailsEvent event) async* {
    if (event is LoadEmployeeList) {
      yield* _mapLoadDataToState(event);
    } else if (event is EmployeeDetailsLoadingSuccess) {
      yield* _mapDetailsDataToState(event);
    } else if (event is EmployeeDetailsLoadingFailed) {
      yield* _mapFailuretoState(event);
    }
  }

  Stream<EmployeeDetailsState> _mapLoadDataToState(
      EmployeeDetailsEvent event) async* {}

  Stream<EmployeeDetailsState> _mapListDataToState(
      EmployeeDetailsLoadingSuccess event) async* {
    //yield EmployeeDetailsLoaded();
  }

  Stream<EmployeeDetailsState> _mapFailuretoState(
      EmployeeDetailsLoadingFailed event) async* {
    yield EmployeeDetailsLoadedLoadingFailed(
        event.error.toString() ?? 'No data found');
  }

  _mapDetailsDataToState(EmployeeDetailsLoadingSuccess event) {}
}
