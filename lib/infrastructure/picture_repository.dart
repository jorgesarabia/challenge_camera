import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';

class PictureRepository implements PictureFacade {
  @override
  Future<List<SavedPicture>> getPictures() {
    throw UnimplementedError();
  }

  @override
  Future<bool> savePicture() {
    throw UnimplementedError();
  }
}
