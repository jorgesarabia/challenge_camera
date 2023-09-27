import 'package:challenge_camera/application/models/picture_form.dart';
import 'package:challenge_camera/application/picture_provider/picture_provider_state.dart';
import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/infrastructure/picture_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PictureNotifier extends StateNotifier<PictureProviderState> {
  PictureNotifier(this._ref) : super(const PictureProviderState());

  final Ref _ref;

  Future<void> fetchPhotos() async {
    final photoRepository = _ref.read(photoRepositoryProvider);
    state = const PictureProviderState(isSubmitting: true);
    final pictures = await photoRepository.getPictures();
    state = PictureProviderState(savedPictures: pictures);
  }

  Future<void> uploadPhoto(PictureForm photo) async {
    final photoRepository = _ref.read(photoRepositoryProvider);
    if (photo.imgPath?.isNotEmpty ?? false) {
      final downloadUrl = await photoRepository.savePicture(photo.imgPath!);
      await photoRepository.saveDetails(SavedPicture(
        imgUrl: downloadUrl,
        title: photo.title,
        description: photo.description,
        place: photo.place,
      ));
      fetchPhotos();
    }
  }
}

final pictureStateProvider = StateNotifierProvider<PictureNotifier, PictureProviderState>((ref) {
  return PictureNotifier(ref);
});

final photoRepositoryProvider = Provider<PictureFacade>((ref) {
  return PictureRepository(
    firebaseFirestore: FirebaseFirestore.instance,
    firebaseStorage: FirebaseStorage.instance,
  );
});
