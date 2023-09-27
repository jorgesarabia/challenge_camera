import 'package:challenge_camera/application/models/picture_form.dart';
import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/infrastructure/picture_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PictureNotifier extends StateNotifier<List<SavedPicture>> {
  PictureNotifier(this._ref) : super([]);

  final Ref _ref;

  Future<void> fetchPhotos() async {
    final photoRepository = _ref.read(photoRepositoryProvider);
    state = await photoRepository.getPictures();
  }

  Future<void> uploadPhoto(PictureForm photo) async {
    final photoRepository = _ref.read(photoRepositoryProvider);
    await photoRepository.savePicture();
    fetchPhotos(); // Actualizar la lista de fotos después de la subida.
  }
}

final formStateProvider = StateNotifierProvider<PictureNotifier, List<SavedPicture>>((ref) => PictureNotifier(ref));

final photoRepositoryProvider = Provider<PictureFacade>((ref) {
  return PictureRepository(firebaseFirestore: FirebaseFirestore.instance);
});
