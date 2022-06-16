import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:example/movies/models/movie.dart';
import 'package:flutter/cupertino.dart';

@immutable
class MoviePage {
  const MoviePage({
    required this.page,
    required this.totalPages,
    required this.results,
  });

  factory MoviePage.fromMap(Map<String, dynamic> map) {
    return MoviePage(
      page: map['page'] as int,
      totalPages: map['total_pages'] as int,
      results: (map['results'] as List)
          .cast<Map<dynamic, dynamic>>()
          .map((e) => e.cast<String, dynamic>())
          .map(
            Movie.fromMap,
          )
          .toList(),
    );
  }
  final int page;
  final int totalPages;
  final List<Movie> results;

  MoviePage copyWith({
    int? page,
    int? totalPages,
    List<Movie>? results,
  }) {
    return MoviePage(
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'total_pages': totalPages,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'MoviePage(page: $page, total_pages: $totalPages, results: $results)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is MoviePage &&
        other.page == page &&
        other.totalPages == totalPages &&
        listEquals(other.results, results);
  }

  @override
  int get hashCode => page.hashCode ^ totalPages.hashCode ^ results.hashCode;
}
