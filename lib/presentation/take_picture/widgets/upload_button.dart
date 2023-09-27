part of '../take_picture_screen.dart';

class _UploadButton extends ConsumerWidget {
  const _UploadButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(formStateProvider);
    final pictureNotifier = ref.read(pictureStateProvider.notifier);

    if (formState.imgPath != null) {
      return ElevatedButton(
        onPressed: () => pictureNotifier.uploadPhoto(formState),
        child: const Text('Upload'),
      );
    }

    return const SizedBox.shrink();
  }
}
