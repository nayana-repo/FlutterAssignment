import 'dart:async';

import 'package:Assignment_Flutter/pages/search/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';



class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(SearchInitial());

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is SearchInitiated) {
      yield* _mapSearchInitiatedEvent(event);
    } else if (event is ClearSearch) {
      yield* _mapClearSearchEvent(event);
    }
  }

  Stream<SearchState> _mapSearchInitiatedEvent(SearchInitiated event) async* {

    yield SearchSuccess(event.query);
  }

  Stream<SearchState> _mapClearSearchEvent(ClearSearch event) async* {
    yield Clear();
  }
}
