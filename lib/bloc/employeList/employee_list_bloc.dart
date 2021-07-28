import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:Assignment_Flutter/repository/employee_repository.dart';
import 'package:Assignment_Flutter/utils/cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'employee_list_event.dart';

part 'employee_list_state.dart';

class EmployeeListBloc extends Bloc<EmployeeListEvent, EmployeeListState> {
  final BehaviorSubject<EmployeeDetailsResponse> _subjectEmployeeList =
      BehaviorSubject<EmployeeDetailsResponse>();
  List<EmployeeDetails> employeeList = [];

  EmployeeListBloc(EmployeeListState initialState) : super(initialState) {
    _subjectEmployeeList.listen((response) {
      this.add(EmployeeListLoadingSuccess(employeeList: response));
    }, onError: (error) {
      this.add(EmployeeListLoadingFailed(error: error));
    });
  }

  dispose() {
    _subjectEmployeeList.close();
  }

  @override
  Stream<EmployeeListState> mapEventToState(EmployeeListEvent event) async* {
    if (event is LoadEmployeeList) {
      yield* _mapLoadDataToState(event);
    } else if (event is EmployeeListLoadingSuccess) {
      yield* _mapListDataToState(event);
    } else if (event is EmployeeListLoadingFailed) {
      yield* _mapFailuretoState(event);
    } else if (event is InitiateEmployeeSearch) {
      yield* _mapSearchToState(event);
    }
  }

  Stream<EmployeeListState> _mapLoadDataToState(
      EmployeeListEvent event) async* {
    _getEmployeeList();
  }

  void _getEmployeeList() async {
    await EmployeeRepository().executeEmployeeListCall(_subjectEmployeeList);
  }

  Stream<EmployeeListState> _mapListDataToState(
      EmployeeListLoadingSuccess event) async* {
    employeeList = event.employeeList.employeeDetails;
    CacheManager().cachedEmployeeList = employeeList;
    yield EmployeeListLoaded(employeeList);
  }

  Stream<EmployeeListState> _mapFailuretoState(
      EmployeeListLoadingFailed event) async* {
    yield EmployeeListLoadedLoadingFailed(
        event.error.toString() ?? 'No data found');
  }

  Stream<EmployeeListState> _mapSearchToState(
      InitiateEmployeeSearch event) async* {
    List<EmployeeDetails> employeeListTemp = [];

    employeeList.forEach((element) {
      if (element.name.contains(event.searchString)) {
        employeeListTemp.add(element);
      }
    });
    yield EmployeeListLoaded(employeeListTemp);
  }
}
