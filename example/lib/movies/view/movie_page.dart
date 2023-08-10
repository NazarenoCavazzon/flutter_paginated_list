import 'package:example/movies/bloc/movie_bloc.dart';
import 'package:example/movies/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paginated_list/paginated_list.dart';
import 'package:text_scroll/text_scroll.dart';

class PageMovie extends StatelessWidget {
  const PageMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MovieBloc(),
      child: const ViewMovie(),
    );
  }
}

class ViewMovie extends StatefulWidget {
  const ViewMovie({super.key});

  @override
  State<ViewMovie> createState() => _ViewMovieState();
}

class _ViewMovieState extends State<ViewMovie> {
  late final TextEditingController _searchController;
  late final FocusNode _searchFocusNode;

  String query = '';

  @override
  void initState() {
    super.initState();
    final state = context.read<MovieBloc>().state;
    if (state.isSuccesful) {
      _searchController = TextEditingController(text: state.query);
    } else {
      _searchController = TextEditingController();
    }
    _searchFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movies'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                focusNode: _searchFocusNode,
                controller: _searchController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => setState(() {
                      _searchController.clear();
                      context.read<MovieBloc>().clearSearch();
                    }),
                    icon: Icon(
                      _searchController.value.text.isEmpty
                          ? Icons.search
                          : Icons.clear,
                      color: const Color(0xffA7A8A9),
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value.isEmpty) {
                    query = value;
                    _searchController.clear();
                    context.read<MovieBloc>().clearSearch();
                    setState(() {});
                  } else {
                    query = value;
                    context.read<MovieBloc>().searchMovie(value);
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<MovieBloc, BlocStateMovie>(
                builder: (context, state) {
                  if (state.isInitial) {
                    return const SizedBox();
                  }
                  if (state.isLoading) {
                    return const Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  return Expanded(
                    child: PaginatedGrid<Movie>(
                      loadingIndicator: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: CircularProgressIndicator(color: Colors.black),
                        ),
                      ),
                      items: state.movies,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.7,
                      ),
                      isLastPage: state.isLastPage,
                      onLoadMore: () => context.read<MovieBloc>().loadMore(),
                      builder: (movie, index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed(
                            '/movie_detail',
                            arguments: movie,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: const Color(0xffA7A8A9),
                                    ),
                                  ),
                                  child: (movie.posterPath!.trim().isNotEmpty)
                                      ? Image.network(
                                          Uri.https(
                                            'image.tmdb.org',
                                            '/t/p/w500/${movie.posterPath}',
                                            {
                                              'api_key':
                                                  'f090bb54758cabf231fb605d3e3e0468',
                                            },
                                          ).toString(),
                                          fit: BoxFit.cover,
                                          errorBuilder: (_, __, ___) =>
                                              const Icon(Icons.group),
                                        )
                                      : const Icon(Icons.group),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: TextScroll(
                                  movie.title,
                                  velocity: const Velocity(
                                    pixelsPerSecond: Offset(25, 0),
                                  ),
                                  delayBefore:
                                      const Duration(milliseconds: 500),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                movie.title,
                                style: const TextStyle(
                                  color: Color(0xffA7A8A9),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });
  final String imageUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
        right: 18,
        bottom: 18,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xffA7A8A9),
              ),
            ),
            child: (imageUrl.trim().isNotEmpty)
                ? Image.network(
                    Uri.https('image.tmdb.org', '/t/p/w500/$imageUrl', {
                      'api_key': 'f090bb54758cabf231fb605d3e3e0468',
                    }).toString(),
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const Icon(Icons.group),
                  )
                : const Icon(Icons.group),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextScroll(
                  title,
                  velocity: const Velocity(
                    pixelsPerSecond: Offset(25, 0),
                  ),
                  delayBefore: const Duration(milliseconds: 500),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextScroll(
                  subtitle,
                  velocity: const Velocity(
                    pixelsPerSecond: Offset(25, 0),
                  ),
                  delayBefore: const Duration(milliseconds: 500),
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xffD3D3D4),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
