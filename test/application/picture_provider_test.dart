import 'package:challenge_camera/application/models/picture_form.dart';
import 'package:challenge_camera/application/picture_provider/picture_provider.dart';
import 'package:challenge_camera/application/picture_provider/picture_provider_state.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../domain/picture_facade_test.mocks.dart';

class Listener extends Mock {
  void call(PictureProviderState? previous, PictureProviderState value);
}

void main() {
  late MockPictureFacade mockPictureFacade;
  final listener = Listener();
  ProviderContainer? container;

  setUp(() {
    mockPictureFacade = MockPictureFacade();
    container = ProviderContainer(
      overrides: [
        photoRepositoryProvider.overrideWithValue(mockPictureFacade),
      ],
    );

    container?.listen(
      pictureStateProvider,
      listener,
      fireImmediately: true,
    );
  });

  tearDown(() {
    container?.dispose();
  });

  test('When get pictures', () async {
    verify(listener(null, const PictureProviderState())).called(1);
    verifyNoMoreInteractions(listener);

    const mockSavedPicture = SavedPicture(
      imgUrl: 'mockValue',
      title: 'mockValue',
      description: 'mockValue',
      takedOn: 'mockValue',
      place: 'mockValue',
    );

    when(mockPictureFacade.getPictures()).thenAnswer((_) async => [mockSavedPicture]);

    await container?.read(pictureStateProvider.notifier).fetchPhotos();

    verify(listener(const PictureProviderState(), const PictureProviderState(isSubmitting: true))).called(1);
    verify(listener(
      const PictureProviderState(isSubmitting: true),
      const PictureProviderState(savedPictures: [mockSavedPicture]),
    )).called(1);
    verifyNoMoreInteractions(listener);

    expect(container?.read(pictureStateProvider).savedPictures.length, 1);
  });

  group('Test upload photo', () {
    test('When the image path is empty', () async {
      final result = await container?.read(pictureStateProvider.notifier).uploadPhoto(const PictureForm());
      expect(result, isFalse);
      verifyNever(listener(const PictureProviderState(), const PictureProviderState(isSubmitting: true)));
    });

    test('When the image path is not empty', () async {
      const mockPath = 'mockPath';
      const mockDownloadUrl = 'mockDownloadUrl';
      const form = PictureForm(imgPath: mockPath);
      const saved = SavedPicture(imgUrl: mockDownloadUrl);

      when(mockPictureFacade.savePicture(mockPath)).thenAnswer((_) async => mockDownloadUrl);
      when(mockPictureFacade.saveDetails(saved)).thenAnswer((_) async => true);
      when(mockPictureFacade.getPictures()).thenAnswer((_) async => []);

      final result = await container?.read(pictureStateProvider.notifier).uploadPhoto(form);
      expect(result, isTrue);
      verify(listener(const PictureProviderState(), const PictureProviderState(isSubmitting: true))).called(1);
      verify(mockPictureFacade.savePicture(mockPath)).called(1);
      verify(mockPictureFacade.saveDetails(saved)).called(1);
    });
  });
}
