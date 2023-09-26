import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/infrastructure/picture_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pictureRepositoryProvider = Provider<PictureRepository>((ref) {
  return PictureRepository(firebaseFirestore: FirebaseFirestore.instance);
});

final pictureRepository = FutureProvider<List<SavedPicture>>((ref) {
  final repository = ref.watch(pictureRepositoryProvider);
  return repository.getPictures();
});
