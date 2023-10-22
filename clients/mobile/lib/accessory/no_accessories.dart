import 'package:flutter/material.dart';
import 'package:headless_haystack/item_management/new_item_action.dart';

class NoAccessoriesPlaceholder extends StatelessWidget {

  /// Displays a message that no accessories are present.
  /// 
  /// Allows the user to quickly add a new accessory.
  const NoAccessoriesPlaceholder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There\'s Nothing Here Yet\nAdd an accessory to get started.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          NewKeyAction(mini: true),
        ],
      ),
    );
  }
}
