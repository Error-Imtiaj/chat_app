import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          title: Text(
            'My profile',
            style: TextStyle(color: Theme.of(context).colorScheme.onError),
          ),
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.onError),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0), // Height of the bottom border
            child: Container(
              color: Theme.of(context).colorScheme.onError, // Border color
              height: 1.0, // Border thickness
            ),
          ),
        ));
  }
}
