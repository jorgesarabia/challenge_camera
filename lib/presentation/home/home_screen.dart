import 'package:flutter/material.dart';

part 'widgets/picture_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _PictureItem();
        },
      ),
    );
  }
}
