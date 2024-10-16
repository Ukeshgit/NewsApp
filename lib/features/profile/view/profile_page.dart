import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text('Profile Page',
            style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
