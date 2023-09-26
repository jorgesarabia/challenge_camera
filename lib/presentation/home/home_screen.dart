import 'package:challenge_camera/application/picture_providers.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/presentation/take_picture/take_picture_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widgets/picture_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pictures = ref.watch(pictureRepository).value;

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
        itemCount: pictures?.length ?? 0,
        itemBuilder: (context, index) {
          if (pictures == null) {
            return const Text('No hay imagenes');
          }

          return _PictureItem(
            savedPicture: pictures[index],
          );
        },
      ),
    );
  }
}
