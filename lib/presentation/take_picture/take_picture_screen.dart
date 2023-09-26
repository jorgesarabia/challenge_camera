import 'package:better_open_file/better_open_file.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:challenge_camera/application/picture_providers.dart';
import 'package:challenge_camera/presentation/common/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

part 'widgets/camera_widget.dart';

class TakePictureScreen extends ConsumerWidget {
  const TakePictureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;

    final pictureProvider = ref.watch(pictureRepositoryProvider);

    final showCamera = true;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: _CameraWidget(),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Card(
      //         child: Stack(
      //           children: [
      //             Center(
      //               child: Padding(
      //                 padding: EdgeInsets.symmetric(vertical: screenHeight / 6),
      //                 child: ElevatedButton(
      //                   onPressed: () {},
      //                   child: const Text('Take Image'),
      //                 ),
      //               ),
      //             ),
      //             if (showCamera) const _CameraWidget(),
      //           ],
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Column(
      //           children: [
      //             AppTextInput(hintText: 'Title'),
      //             SizedBox(height: 10),
      //             AppTextInput(
      //               maxLines: 5,
      //               hintText: 'Write a description of the image',
      //             ),
      //             SizedBox(height: 10),
      //             AppTextInput(hintText: 'Place'),
      //           ],
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => pictureProvider.savePicture(),
      //         child: const Text('Upload'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
