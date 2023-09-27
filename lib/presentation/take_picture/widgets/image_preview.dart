part of '../take_picture_screen.dart';

class _ImagePreview extends ConsumerWidget {
  const _ImagePreview();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final pictureForm = ref.watch(formStateProvider);

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            width: screenSize.width * .9,
            height: screenSize.height / 2,
            color: Colors.purple[50],
            child: Builder(
              builder: (context) {
                if (pictureForm.imgPath != null) {
                  return Image.file(
                    File(pictureForm.imgPath!),
                    fit: BoxFit.contain,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
        const _GetOrChangeImageButton(),
      ],
    );
  }
}
