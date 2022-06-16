import 'dart:convert';

class Movie {
  const Movie({
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.title,
    required this.voteAverage,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      overview: map['overview'] as String,
      popularity: map['popularity'] as num,
      posterPath: map['poster_path'] as String?,
      title: map['title'] as String,
      voteAverage: map['vote_average'] as num,
    );
  }

  final String overview;
  final num popularity;
  final String? posterPath;
  final String title;
  final num voteAverage;

  Movie copyWith({
    String? overview,
    num? popularity,
    String? posterPath,
    String? title,
    num? voteAverage,
  }) {
    return Movie(
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'title': title,
      'vote_average': voteAverage,
    };
  }

  String toJson() => json.encode(toMap());
}
