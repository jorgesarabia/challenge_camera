import 'package:challenge_camera/application/models/picture_form.dart';
import 'package:challenge_camera/application/picture_form/picture_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class Listener extends Mock {
  void call(PictureForm? previous, PictureForm value);
}

void main() {
  test('Picture form interaction', () {
    final container = ProviderContainer();

    final listener = Listener();

    container.listen<PictureForm>(
      formStateProvider,
      listener,
      fireImmediately: true,
    );

    verify(listener(null, const PictureForm())).called(1);
    verifyNoMoreInteractions(listener);

    const mockPath = 'mockPath';
    const mockTitle = 'Mock title';
    const mockDescription = 'Mock description';
    const mockPlace = 'Mock place';

    container.read(formStateProvider.notifier).changePath(mockPath);
    verify(listener(const PictureForm(), const PictureForm(imgPath: mockPath))).called(1);
    verifyNoMoreInteractions(listener);

    container.read(formStateProvider.notifier).changeTitle(mockTitle);
    verify(listener(
        const PictureForm(imgPath: mockPath),
        const PictureForm(
          imgPath: mockPath,
          title: mockTitle,
        ))).called(1);
    verifyNoMoreInteractions(listener);

    container.read(formStateProvider.notifier).changeDescription(mockDescription);
    verify(listener(
        const PictureForm(
          imgPath: mockPath,
          title: mockTitle,
        ),
        const PictureForm(
          imgPath: mockPath,
          title: mockTitle,
          description: mockDescription,
        ))).called(1);
    verifyNoMoreInteractions(listener);

    container.read(formStateProvider.notifier).changePlace(mockPlace);
    verify(listener(
        const PictureForm(
          imgPath: mockPath,
          title: mockTitle,
          description: mockDescription,
        ),
        const PictureForm(
          imgPath: mockPath,
          title: mockTitle,
          description: mockDescription,
          place: mockPlace,
        ))).called(1);
    verifyNoMoreInteractions(listener);

    container.read(formStateProvider.notifier).clear();
    verify(listener(
      const PictureForm(
        imgPath: mockPath,
        title: mockTitle,
        description: mockDescription,
        place: mockPlace,
      ),
      const PictureForm(),
    )).called(1);
    verifyNoMoreInteractions(listener);

    container.dispose();
  });
}
