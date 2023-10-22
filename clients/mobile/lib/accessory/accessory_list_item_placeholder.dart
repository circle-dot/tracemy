import 'package:flutter/material.dart';
import 'package:headless_haystack/accessory/accessory_list_item.dart';
import 'package:headless_haystack/placeholder/avatar_placeholder.dart';
import 'package:headless_haystack/placeholder/text_placeholder.dart';

class AccessoryListItemPlaceholder extends StatelessWidget {

  /// A placeholder for an [AccessoryListItem] showing a loading animation.
  const AccessoryListItemPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Uses a similar layout to the actual accessory list item
    return const ListTile(
      title: TextPlaceholder(),
      subtitle: TextPlaceholder(),
      dense: true,
      leading: AvatarPlaceholder(),
      trailing: TextPlaceholder(width: 60),
    );
  }
}
