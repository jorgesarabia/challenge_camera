import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/infrastructure/picture_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pictureRepositoryProvider = Provider<PictureRepository>((ref) => PictureRepository());

final pictureRepostitory = FutureProvider<List<SavedPicture>>((ref) {
  final repository = ref.watch(pictureRepositoryProvider);
  return repository.getPictures();
});
