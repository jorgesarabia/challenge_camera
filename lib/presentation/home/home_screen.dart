import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge_camera/application/picture_provider/picture_provider.dart';
import 'package:challenge_camera/application/utils/title_extension.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/presentation/take_picture/take_picture_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widgets/picture_item.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(pictureStateProvider.notifier).fetchPhotos();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pictureNotifier = ref.watch(pictureStateProvider);
    final pictures = pictureNotifier.savedPictures;
    final isSubmitting = pictureNotifier.isSubmitting;

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
      body: Builder(builder: (context) {
        if (isSubmitting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (pictures.isEmpty) {
          return const Center(child: Text('No hay imagenes'));
        }

        return ListView.builder(
          itemCount: pictures.length,
          itemBuilder: (context, index) {
            return _PictureItem(
              savedPicture: pictures[index],
            );
          },
        );
      }),
    );
  }
}
