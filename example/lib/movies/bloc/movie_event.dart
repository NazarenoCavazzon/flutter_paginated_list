part of 'movie_bloc.dart';

abstract class BlocEventMovie extends Equatable {
  const BlocEventMovie();

  @override
  List<Object> get props => [];
}

class BlocEventMovieSearch extends BlocEventMovie {
  const BlocEventMovieSearch(this.query);

  final String query;

  @override
  List<Object> get props => [query];
}

class BlocEventMovieLoadMore extends BlocEventMovie {
  const BlocEventMovieLoadMore();
}

class BlocEventMovieClearSearch extends BlocEventMovie {
  const BlocEventMovieClearSearch();
}
