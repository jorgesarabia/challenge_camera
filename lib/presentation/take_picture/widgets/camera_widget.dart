part of '../take_picture_screen.dart';

class _CameraWidget extends StatelessWidget {
  const _CameraWidget();

  @override
  Widget build(BuildContext context) {
    return CameraAwesomeBuilder.custom(
      builder: (cameraState, previewSize, previewRect) {
        return cameraState.when(
          onPreparingCamera: (state) => const Center(child: CircularProgressIndicator()),
          onPhotoMode: (state) {
            return Column(
              children: [
                const Expanded(child: SizedBox()),
                Container(
                  margin: const EdgeInsets.only(bottom: 32.0),
                  child: MaterialButton(
                    onPressed: () {
                      state.takePhoto().then((value) {
                        print(value);
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
        // onPhotoMode: (state) {
        //   return GestureDetector(
        //     onTap: () async {
        //       final some = await state.takePhoto();
        //       print(some);
        //     },
        //     child: Text('Take'),
        //   );
        // });
        //onPhotoMode: (photoCameraState) => photoCameraState.takePhoto());
      },
      saveConfig: SaveConfig.photo(
        pathBuilder: () async {
          final directory = await getTemporaryDirectory();
          return '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
        },
      ),
    );
    return CameraAwesomeBuilder.awesome(
      saveConfig: SaveConfig.photo(
        pathBuilder: () async {
          final directory = await getTemporaryDirectory();
          return '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
        },
      ),
      onMediaTap: (image) {
        // print(image.)
        OpenFile.open(image.filePath);
      },
      theme: AwesomeTheme(
        // Background color of the bottom actions
        bottomActionsBackgroundColor: Colors.deepPurple.withOpacity(0.5),
        // Buttons theme
        buttonTheme: AwesomeButtonTheme(
          // Background color of the button
          backgroundColor: Colors.deepPurple.withOpacity(0.5),
          // Size of the icon
          iconSize: 32,
          // Padding around the icon
          padding: const EdgeInsets.all(18),
          // Color of the icon
          foregroundColor: Colors.lightBlue,
          // Tap visual feedback (ripple, bounce...)
          buttonBuilder: (child, onTap) {
            return ClipOval(
              child: Material(
                color: Colors.transparent,
                shape: const CircleBorder(),
                child: InkWell(
                  splashColor: Colors.deepPurple,
                  highlightColor: Colors.deepPurpleAccent.withOpacity(0.5),
                  onTap: () {
                    print('Algo');
                  },
                  child: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
