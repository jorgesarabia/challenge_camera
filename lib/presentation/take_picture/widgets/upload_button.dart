part of '../take_picture_screen.dart';

class _UploadButton extends ConsumerWidget {
  const _UploadButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(formStateProvider);
    final stateProvider = ref.watch(formStateProvider.notifier);
    final pictureNotifier = ref.read(pictureStateProvider.notifier);

    if (formState.imgPath != null) {
      return ElevatedButton(
        onPressed: () => pictureNotifier.uploadPhoto(formState).then((wasSaved) {
          if (wasSaved && Navigator.canPop(context)) {
            stateProvider.clear();
            Navigator.of(context).pop();
          }
        }),
        child: const Text('Upload'),
      );
    }

    return const SizedBox.shrink();
  }
}
