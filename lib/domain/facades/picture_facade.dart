import 'package:challenge_camera/domain/models/saved_picture.dart';

abstract class PictureFacade {
  Future<List<SavedPicture>> getPictures();
  Future<bool> savePicture();
  Future<void> takePicture();
}
