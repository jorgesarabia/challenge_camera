part of '../take_picture_screen.dart';

class _GetOrChangeImageButton extends ConsumerWidget {
  const _GetOrChangeImageButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateProvider = ref.watch(formStateProvider.notifier);
    final hasImage = ref.watch(formStateProvider).imgPath != null;

    return Positioned(
      bottom: hasImage ? 10.0 : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (hasImage) ...[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<String>(
                    builder: (context) => const CameraScreen(),
                  ),
                ).then((value) => stateProvider.changePath(value));
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(5),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.cyan,
              ),
              child: const Icon(Icons.update, color: Colors.white),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => stateProvider.changePath(null),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(5),
                backgroundColor: Colors.red,
                foregroundColor: Colors.orange,
              ),
              child: const Icon(Icons.close, color: Colors.white),
            ),
          ] else
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<String>(
                    builder: (context) => const CameraScreen(),
                  ),
                ).then((value) => stateProvider.changePath(value));
              },
              child: Text(hasImage ? 'Change Image' : 'Take Image'),
            ),
        ],
      ),
    );
  }
}
