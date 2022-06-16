part of 'movie_bloc.dart';

enum BlocStateMovieStatus {
  initial,
  loading,
  loadingMore,
  succesful,
  failure,
}

class BlocStateMovie extends Equatable {
  const BlocStateMovie({
    this.movies = const [],
    this.status = BlocStateMovieStatus.initial,
    this.isLastPage = false,
    this.query,
    this.start = 0,
    this.error,
  });
  final bool isLastPage;
  final List<Movie> movies;
  final BlocStateMovieStatus status;
  final String? query;
  final int start;
  final Exception? error;

  BlocStateMovie copyWith({
    List<Movie>? movies,
    BlocStateMovieStatus? status,
    bool? isLastPage,
    String? query,
    int? start,
    Exception? error,
  }) {
    return BlocStateMovie(
      movies: movies ?? this.movies,
      status: status ?? this.status,
      isLastPage: isLastPage ?? this.isLastPage,
      query: query ?? this.query,
      start: start ?? this.start,
      error: error ?? this.error,
    );
  }

  bool get isInitial => status == BlocStateMovieStatus.initial;
  bool get isLoading => status == BlocStateMovieStatus.loading;
  bool get isLoadingMore => status == BlocStateMovieStatus.loadingMore;
  bool get isSuccesful => status == BlocStateMovieStatus.succesful;
  bool get isFailed => status == BlocStateMovieStatus.failure;

  @override
  List<Object?> get props => [
        movies,
        status,
        isLastPage,
        query ?? '',
        start,
        error ?? Object(),
      ];
}
