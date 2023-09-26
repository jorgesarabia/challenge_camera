import 'package:challenge_camera/presentation/take_picture/take_picture_screen.dart';
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const TakePictureScreen(),
                ),
              );
            },
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
