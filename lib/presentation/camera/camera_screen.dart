import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraAwesomeBuilder.custom(
        builder: (cameraState, previewSize, previewRect) {
          return cameraState.when(
            onPreparingCamera: (state) {
              return const Center(child: CircularProgressIndicator());
            },
            onPhotoMode: (state) {
              return Column(
                children: [
                  const Expanded(child: SizedBox()),
                  Container(
                    margin: const EdgeInsets.only(bottom: 32.0),
                    child: MaterialButton(
                      onPressed: () {
                        state.takePhoto().then((value) {
                          Navigator.of(context).pop(value);
                        });
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(16),
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.camera_alt,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        saveConfig: SaveConfig.photo(
          pathBuilder: () async {
            final directory = await getTemporaryDirectory();
            return '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
          },
        ),
      ),
    );
    // return CameraAwesomeBuilder.awesome(
    //   saveConfig: SaveConfig.photo(
    //     pathBuilder: () async {
    //       final directory = await getTemporaryDirectory();
    //       return '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
    //     },
    //   ),
    //   onMediaTap: (image) {
    //     // print(image.)
    //     // OpenFile.open(image.filePath);
    //   },
    //   theme: AwesomeTheme(
    //     // Background color of the bottom actions
    //     bottomActionsBackgroundColor: Colors.deepPurple.withOpacity(0.5),
    //     // Buttons theme
    //     buttonTheme: AwesomeButtonTheme(
    //       // Background color of the button
    //       backgroundColor: Colors.deepPurple.withOpacity(0.5),
    //       // Size of the icon
    //       iconSize: 32,
    //       // Padding around the icon
    //       padding: const EdgeInsets.all(18),
    //       // Color of the icon
    //       foregroundColor: Colors.lightBlue,
    //       // Tap visual feedback (ripple, bounce...)
    //       buttonBuilder: (child, onTap) {
    //         return ClipOval(
    //           child: Material(
    //             color: Colors.transparent,
    //             shape: const CircleBorder(),
    //             child: InkWell(
    //               splashColor: Colors.deepPurple,
    //               highlightColor: Colors.deepPurpleAccent.withOpacity(0.5),
    //               onTap: () {
    //                 print('Algo');
    //               },
    //               child: child,
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
