import 'package:flutter/gestures.dart';
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
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.controller,
    this.clipBehavior = Clip.hardEdge,
    this.dragStartBehavior = DragStartBehavior.start,
    this.findChildIndexCallback,
    this.cacheExtent,
    this.itemExtent,
    this.primary,
    this.reverse = false,
    this.shrinkWrap = false,
    this.prototypeItem,
    this.restorationId,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.semanticChildCount,
    this.listViewKey,
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

  /// The ListView [addAutomaticKeepAlives] parameter.
  final bool addAutomaticKeepAlives;

  /// The ListView [addRepaintBoundaries] parameter.
  final bool addRepaintBoundaries;

  /// The ListView [addSemanticIndexes] parameter.
  final bool addSemanticIndexes;

  /// The ListView [cacheExtent] parameter.
  final double? cacheExtent;

  /// The ListView [clipBehavior] parameter.
  final Clip clipBehavior;

  /// The ListView [controller] parameter.
  final ScrollController? controller;

  /// The ListView [dragStartBehavior] parameter.
  final DragStartBehavior dragStartBehavior;

  /// The ListView [findChildIndexCallback] parameter.
  final int? Function(Key)? findChildIndexCallback;

  /// The ListView [itemExtent] parameter.
  final double? itemExtent;

  /// The ListView [primary] parameter.
  final bool? primary;

  /// The ListView [reverse] parameter.
  final bool reverse;

  /// The ListView [shrinkWrap] parameter.
  final bool shrinkWrap;

  /// The ListView [prototypeItem] parameter.
  final Widget? prototypeItem;

  /// The ListView [restorationId] parameter.
  final String? restorationId;

  /// The ListView [keyboardDismissBehavior] parameter.
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  /// The ListView [semanticChildCount] parameter.
  final int? semanticChildCount;

  /// The ListView [listViewKey] parameter.
  final Key? listViewKey;

  /// The padding of the [PaginatedList].
  final EdgeInsetsGeometry padding;

  /// The alignment of the [deleteIcon].
  final Alignment deleteIconAlignment;

  @override
  Widget build(BuildContext context) {
    final itemCount = items.length + (isRecentSearch || isLastPage ? 0 : 1);
    return ListView.builder(
      key: listViewKey,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      restorationId: restorationId,
      semanticChildCount: semanticChildCount,
      shrinkWrap: shrinkWrap,
      prototypeItem: prototypeItem,
      keyboardDismissBehavior: keyboardDismissBehavior,
      padding: padding,
      itemExtent: itemExtent,
      findChildIndexCallback: findChildIndexCallback,
      dragStartBehavior: dragStartBehavior,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      clipBehavior: clipBehavior,
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
    );
  }
}
