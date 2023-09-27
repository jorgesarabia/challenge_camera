part of '../take_picture_screen.dart';

class _UploadButton extends ConsumerWidget {
  const _UploadButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.read(formStateProvider);

    if (formState.imgPath != null) {
      return ElevatedButton(
        onPressed: () {
          // pictureProvider.savePicture();
        },
        child: const Text('Upload'),
      );
    }

    return const SizedBox.shrink();
  }
}
