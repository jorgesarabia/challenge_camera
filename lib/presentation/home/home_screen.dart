import 'package:flutter/material.dart';

part 'widgets/picture_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ]),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _PictureItem();
        },
      ),
    );
  }
}
