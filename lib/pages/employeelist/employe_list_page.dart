import 'package:Assignment_Flutter/bloc/employeList/employee_list_bloc.dart';
import 'package:Assignment_Flutter/bloc/search/search_bloc.dart';
import 'package:Assignment_Flutter/constants/constants.dart';
import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:Assignment_Flutter/shared/widget/custom_divider.dart';
import 'package:Assignment_Flutter/shared/widget/list_placeholder.dart';
import 'package:Assignment_Flutter/shared/widget/search_widget.dart';
import 'package:Assignment_Flutter/utils/app_navigation.dart';
import 'package:Assignment_Flutter/utils/cache_manager.dart';
import 'package:Assignment_Flutter/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeListPage extends StatefulWidget {
  EmployeeListPage();

  @override
  _EmployeeListPageState createState() => _EmployeeListPageState();
}

class _EmployeeListPageState extends State<EmployeeListPage> {
  ScrollController _scrollController;
  String searchString = "";
  EmployeeListBloc _employeeListBloc;
  SearchBloc _searchBloc;
  List<EmployeeDetails> _employeeList;

  @override
  void initState() {
    super.initState();

    /// Currently supporting Portrait mode only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    _scrollController = ScrollController();
    _searchBloc = BlocProvider.of(context);
    _employeeListBloc = BlocProvider.of(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorPrimaryDark,
      child: SafeArea(
        child: Scaffold(
          appBar: _getAppBarLayout(context),
          body: SafeArea(child: _getBodyWidget(context)),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_scrollController != null) {
      _scrollController.dispose();
    }
    if (_searchBloc != null) _searchBloc.close();
    if (_employeeListBloc != null) _employeeListBloc.close();
  }

  /// Main body widget. It contains all subsequent children in the widget tree.
  ///
  Widget _getBodyWidget(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SearchBloc, SearchState>(listener: (context, state) {
          if (state is SearchSuccess) {
            context
                .bloc<EmployeeListBloc>()
                .add(InitiateEmployeeSearch(state.searchQuery));
            searchString = state.searchQuery;
          }
        }),
        BlocListener<EmployeeListBloc, EmployeeListState>(
            listener: (context, state) {
          if (state is EmployeeListLoaded) {
            _employeeList = state.employeeList;
          }
        }),
      ],
      child: BlocBuilder<EmployeeListBloc, EmployeeListState>(
        builder: (context, state) {
          if (state is EmployeeListInitial) {
            if (CacheManager().cachedEmployeeList == null ||
                CacheManager().cachedEmployeeList.isEmpty) {
              _employeeListBloc.add(LoadEmployeeList());
              return ListPlaceholder();
            } else {
              _employeeList = CacheManager().cachedEmployeeList;
              return _getBodyLayout(context, _employeeList);
            }
          } else if (state is EmployeeListLoaded) {
            return _getBodyLayout(context, _employeeList);
          } else if (state is EmployeeListLoadedLoadingFailed) {
            return RefreshIndicator(
              onRefresh: () async {
                _employeeListBloc.add(LoadEmployeeList());
              },
              backgroundColor: Colors.white,
              color: Colors.black,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 1,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container();
                        }),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Unable to fetch data'),
                    ),
                  ),
                ],
              ),
            );
          } else {
            _employeeListBloc.add(LoadEmployeeList());
            return ListPlaceholder();
          }
        },
      ),
    );
  }

  Widget _getBodyLayout(
      BuildContext context, List<EmployeeDetails> employeeList) {
    return Column(
      children: [
        //SearchWidget(),
        CustomDivider(),
        _employeeListLayout(context, employeeList)
      ],
    );
  }

  Widget _employeeListLayout(
      BuildContext context, List<EmployeeDetails> employeeList) {
    return Expanded(
        child: ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      controller: _scrollController,
      itemCount: employeeList.length,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: InkWell(
              onTap: () {
                AppNavigator.navigateToEmployeeDetailsDetails(
                    context, employeeList[index]);
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            employeeList[index].profileImage != null
                                ? new Container(
                                    height: 60,
                                    width: 60,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: new NetworkImage(
                                              employeeList[index].profileImage,
                                            ))))
                                : Icon(Icons.account_circle, size: 60)
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              employeeList[index].name == null
                                  ? "NA"
                                  : employeeList[index].name,
                              style: Styles.nameTextStyle),
                          Text(
                              employeeList[index].company?.name == null
                                  ? "No name found"
                                  : employeeList[index].company.name,
                              style: Styles.nameTextStyle)
                        ],
                      )
                    ],
                  ),
                  CustomDivider(),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }

  Widget _getAppBarLayout(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          'Employee List'.toUpperCase(),
          style: Styles.appTitleTextStyle,
        ),
      ),
    );
  }
}
