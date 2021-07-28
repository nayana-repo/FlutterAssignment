import 'package:Assignment_Flutter/bloc/search/search_bloc.dart';
import 'package:Assignment_Flutter/pages/employeelist/employe_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/employeList/employee_list_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider<SearchBloc>(
            create: (context) => SearchBloc(SearchInitial())),
        BlocProvider(
          create: (context) => EmployeeListBloc(EmployeeListInitial()),
        ),
      ], child: EmployeeListPage()),

      // EmployeeListPage(),
    );
  }
}
