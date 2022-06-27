import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// {@template paginated_list}
/// A Paginated List widget that displays a list of items in a scrollable
/// container. The list can be scrolled horizontally or vertically. The list
/// can be infinite, meaning that it will request additional items as the
/// user scrolls.
/// {@endtemplate}
class PaginatedList<T> extends StatelessWidget {
  /// {@macro paginated_list}
  const PaginatedList({
    super.key,
    this.onTap,
    this.onLoadMore,
    this.onRemove,
    this.builder,
    this.loadingIndicator = const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    ),
    this.deleteIcon = const Icon(
      Icons.close,
      color: Colors.white,
    ),
    this.physics = const BouncingScrollPhysics(),
    this.scrollDirection = Axis.vertical,
    this.deleteIconAlignment = Alignment.centerRight,
    this.padding = EdgeInsets.zero,
    required this.items,
    required this.isRecentSearch,
    required this.isLastPage,
  });

  /// The list of items to display.
  final List<T> items;

  /// The function that is called when the user taps an item.
  final Function(int index)? onTap;

  /// The function that is called when the user requests more items.
  final Function(int index)? onLoadMore;

  /// The function that is called when the user taps the delete icon.
  final Function(T item, int index)? onRemove;

  /// The function that is called to build the items of the list.
  final Widget Function(T item, int index)? builder;

  /// The widget to display while the list is loading.
  final Widget loadingIndicator;

  /// The icon to display for the delete button.
  final Widget deleteIcon;

  /// The scroll physics to use for the list.
  final ScrollPhysics physics;

  /// The scroll direction of the list.
  final Axis scrollDirection;

  /// Whether the list is displaying recent searches.
  final bool isRecentSearch;

  /// Whenever the list is displaying the last page of results.
  final bool isLastPage;

  /// The padding of the [PaginatedList].
  final EdgeInsetsGeometry padding;

  /// The alignment of the [deleteIcon].
  final Alignment deleteIconAlignment;

  @override
  Widget build(BuildContext context) {
    final itemCount = items.length + (isRecentSearch || isLastPage ? 0 : 1);
    return Padding(
      padding: padding,
      child: ListView.builder(
        scrollDirection: scrollDirection,
        physics: physics,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              InkWell(
                onTap: () => onTap?.call(index),
                child: Builder(
                  builder: (context) {
                    if (index == items.length) {
                      return VisibilityDetector(
                        key: const Key('loading-more'),
                        onVisibilityChanged: (visibility) {
                          if (visibility.visibleFraction == 1) {
                            onLoadMore?.call(index);
                          }
                        },
                        child: loadingIndicator,
                      );
                    } else {
                      final item = items[index];
                      return builder?.call(item, index) ?? const SizedBox();
                    }
                  },
                ),
              ),
              if (isRecentSearch)
                Builder(
                  builder: (context) {
                    final item = items[index];
                    return Align(
                      alignment: deleteIconAlignment,
                      child: IconButton(
                        onPressed: () {
                          if (item != null) {
                            onRemove?.call(item, index);
                          }
                        },
                        icon: deleteIcon,
                      ),
                    );
                  },
                )
            ],
          );
        },
      ),
    );
  }
}
