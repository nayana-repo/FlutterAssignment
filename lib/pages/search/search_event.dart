part of 'search_bloc.dart';

abstract class SearchEvent {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchInitiated extends SearchEvent {
  final String query;

  SearchInitiated({this.query});

  @override
  List<Object> get props => [query];
}

class ClearSearch extends SearchEvent {
  ClearSearch();
}