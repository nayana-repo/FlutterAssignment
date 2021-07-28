part of 'search_bloc.dart';

abstract class SearchState {
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final String searchQuery;

  SearchSuccess(this.searchQuery);

  @override
  List<Object> get props => [searchQuery];
}

class SearchFailure extends SearchState {
  final String error;

  SearchFailure(this.error);

  @override
  List<Object> get props => [error];
}

class Clear extends SearchState {
  Clear();
}
