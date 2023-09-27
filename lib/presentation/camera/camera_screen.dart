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
  }
}
