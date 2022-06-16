import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:example/movies/models/movie.dart';
import 'package:example/movies/models/movie_page.dart';
import 'package:http/http.dart' as http;

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<BlocEventMovie, BlocStateMovie> {
  MovieBloc() : super(const BlocStateMovie()) {
    on<BlocEventMovieSearch>(_searchMovie);
    on<BlocEventMovieLoadMore>(_loadMore);
    on<BlocEventMovieClearSearch>(_clearSearch);
  }

  FutureOr<void> _searchMovie(
    BlocEventMovieSearch event,
    Emitter<BlocStateMovie> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStateMovieStatus.loading,
        query: event.query,
        start: 0,
      ),
    );
    try {
      final uri = Uri.https(
        apiUrl,
        '/3/search/movie',
        {
          'api_key': apiKey,
          'query': event.query,
        },
      );

      final response = await http.get(uri);
      final decodedJson = jsonDecode(response.body);

      final moviePage = MoviePage.fromMap(
        (decodedJson as Map).cast<String, dynamic>(),
      );

      emit(
        state.copyWith(
          movies: moviePage.results,
          status: BlocStateMovieStatus.succesful,
          isLastPage: moviePage.page == moviePage.totalPages,
          start: 2,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: Exception(e.toString()),
          status: BlocStateMovieStatus.failure,
        ),
      );
    }
  }

  FutureOr<void> _loadMore(
    BlocEventMovieLoadMore event,
    Emitter<BlocStateMovie> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStateMovieStatus.loadingMore,
      ),
    );
    try {
      final uri = Uri.https(
        apiUrl,
        '/3/search/movie',
        {
          'api_key': apiKey,
          'query': state.query,
          'page': state.start.toString(),
        },
      );

      final response = await http.get(uri);
      final decodedJson = jsonDecode(response.body);

      final moviePage = MoviePage.fromMap(
        (decodedJson as Map).cast<String, dynamic>(),
      );

      emit(
        state.copyWith(
          movies: state.movies + moviePage.results,
          status: BlocStateMovieStatus.succesful,
          isLastPage: moviePage.page == moviePage.totalPages,
          start: state.start + 1,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: Exception(e.toString()),
          status: BlocStateMovieStatus.failure,
        ),
      );
    }
  }

  FutureOr<void> _clearSearch(
    BlocEventMovieClearSearch event,
    Emitter<BlocStateMovie> emit,
  ) async {
    emit(
      state.copyWith(
        status: BlocStateMovieStatus.initial,
        isLastPage: false,
        movies: [],
        start: 0,
      ),
    );
  }

  final apiUrl = 'api.themoviedb.org';
  final apiKey = 'f090bb54758cabf231fb605d3e3e0468';

  void searchMovie(String query) => add(BlocEventMovieSearch(query));
  void loadMore() => add(const BlocEventMovieLoadMore());
  void clearSearch() => add(const BlocEventMovieClearSearch());
}
