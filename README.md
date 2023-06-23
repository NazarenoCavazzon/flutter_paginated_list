# paginated_list

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A Paginated List widget that displays a list of items in a scrollable container. The list can be scrolled horizontally or vertically. The list can be infinite, meaning that it will request additional items as the user scrolls.

## Introduction

This library makes using pagination easier by giving the user the functions  that he'll need to use very accesible:

<div align="center">

![app example](https://media0.giphy.com/media/xlB7llIT0g76jaOlQ5/giphy.gif?cid=790b7611447c0f905c0babebd5cd6e33597c380c65f9d100&rid=giphy.gif&ct=g)  
</div>

## Usage
```dart
import 'package:paginated_list/paginated_list.dart';
```
```dart
PaginatedList<Movie>(
    loadingIndicator: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Center(
            child: CircularProgressIndicator(color: Colors.black),
        ),
    ),
    items: state.movies,
    isRecentSearch: false,
    isLastPage: state.isLastPage,
    onLoadMore: (index) => context.read<MovieBloc>().loadMore(),
    builder: (movie, index) => SearchItem(
        subtitle: movie.overview,
        title: movie.title,
        imageUrl: movie.posterPath ?? '',
    ),
),
```
The `PaginatedList` receive a **type** as you can see in the example above, this is what you're going to receive as the first parameter in the builder and will determinate the type of the elements of the **items** list. 

The **onLoadMore** function is going to be called whenever the last item is 100% visible, here is where you should put the function that will add more items to the **items** list.

The **isRecentSearch** parameter will add an IconButton in the center right position, by default but you can change it, of the widget, one position up in the **Widget Tree** that will let you add a delete function to maybe delete old searchs as shown below. I'll add an example of this in the documentation as well.


<div align="center">

![delete example](https://media4.giphy.com/media/UeRRHfen0P7b8pbFGA/giphy.gif?cid=790b76116629751d132015f39b08dd4397322d0b5dc2494e&rid=giphy.gif&ct=g)  
</div>

The **isLastPage** parameter is a boolean that will tell the widget if it's showing the last page of the items. What it basically does is not display the **loadingIndicator** and don't call the **onLoadMore** function.

The main parent of the `PaginatedList` is a ListView.builder(), so you may want to use a Expandable or a SizedBox with height and width to give the widget size to work with.

## Example

Please take a look to the [example I made in the repository](https://github.com/NazarenoCavazzon/flutter_paginated_list/tree/main/example) to test it.


[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
