import 'package:Assignment_Flutter/constants/constants.dart';
import 'package:Assignment_Flutter/network/model/employee_details_response.dart';
import 'package:Assignment_Flutter/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmployeeDetailsPage extends StatefulWidget {
  EmployeeDetails _employeeDetails;

  EmployeeDetailsPage(this._employeeDetails);

  @override
  _EmployeeDetailState createState() => _EmployeeDetailState();
}

class _EmployeeDetailState extends State<EmployeeDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
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

  Widget _getAppBarLayout(Object context) {
    return AppBar(
      title: Center(
        child: Text(
          'Employee Details'.toUpperCase(),
          style: Styles.appTitleTextStyle,
        ),
      ),
    );
  }

  Widget _getBodyWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget._employeeDetails.profileImage != null
                  ? new Container(
                      height: 120,
                      width: 120,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                widget._employeeDetails.profileImage,
                              ))))
                  : Icon(Icons.account_circle, size: 120)
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                  child: Text(
                widget._employeeDetails.name.toUpperCase(),
                style: kTextStyleTitl,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                  child: Text(
                widget._employeeDetails.username.toUpperCase(),
                style: kTextStyleSubtitle1,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                  child: Text(
                widget._employeeDetails.email != null
                    ? widget._employeeDetails.email
                    : 'NA',
                style: kTextStyleSubtitle1,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                  child: Text(
                widget._employeeDetails.phone != null
                    ? widget._employeeDetails.phone
                    : 'NA',
                style: kTextStyleSubtitle1,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                  child: Text(
                widget._employeeDetails.address != null
                    ? widget._employeeDetails.address.street
                    : 'NA',
                style: kTextStyleSubtitle1,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                  child: Text(
                widget._employeeDetails.company != null
                    ? widget._employeeDetails.company.name
                    : 'NA',
                style: kTextStyleSubtitle1,
              )),
            ),
          ],
        )
      ],
    );
  }
}
