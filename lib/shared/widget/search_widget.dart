
import 'package:Assignment_Flutter/constants/colors.dart';
import 'package:Assignment_Flutter/constants/constants.dart';
import 'package:Assignment_Flutter/pages/search/search_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController editingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    if (editingController != null) {
      editingController.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state is SearchFailure) {
        } else if (state is Clear) {
          editingController.text = "";
        }
      },
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return searchBarWidget(context);
        },
      ),
    );
  }

  Widget searchBarWidget(BuildContext context) {
    return Theme(
      key: _scaffoldKey,
      data: Theme.of(context).copyWith(
          textSelectionHandleColor: Colors.transparent,
          textSelectionColor: ColorConstants.kDottedLineColor),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: editingController,
        onTap: () {},
        onChanged: (text) {
          _initiateSearch(text, context);
        },
        decoration: InputDecoration(
          hintStyle: kTextStyleSearch,
          hintText: 'Search',
          prefixIcon: Icon(
            Icons.search,
            color: kSeverityDropdown,
            size: 18,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        style: kTextStyleSearch,
      ),
    );
  }

  _initiateSearch(String queryString, BuildContext context) {
    BlocProvider.of<SearchBloc>(context)
        .add(SearchInitiated(query: queryString));
  }
}
