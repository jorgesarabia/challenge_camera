part of '../take_picture_screen.dart';

class _DetailForm extends ConsumerWidget {
  const _DetailForm();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateProvider = ref.watch(formStateProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          AppTextInput(
            hintText: 'Title',
            onChanged: (title) => stateProvider.changeTitle(title),
          ),
          const SizedBox(height: 10),
          AppTextInput(
            maxLines: 5,
            hintText: 'Write a description of the image',
            onChanged: (description) => stateProvider.changeDescription(description),
          ),
          const SizedBox(height: 10),
          AppTextInput(
            hintText: 'Place',
            onChanged: (place) => stateProvider.changePlace(place),
          ),
        ],
      ),
    );
  }
}
