import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';

class PictureRepository implements PictureFacade {
  // const PictureRepository({
  //   required this.firebaseFirestore,
  // });

  // final FirebaseFirestore firebaseFirestore;

  @override
  Future<List<SavedPicture>> getPictures() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      SavedPicture(
        imgUrl: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
        title: 'Fake Image',
        description: 'Una breve descripcion',
        takedOn: DateTime.now().toIso8601String(),
        place: 'Clorinda',
      ),
      SavedPicture(
        imgUrl: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
        title: 'Fake Image',
        description: 'Una breve descripcion',
        takedOn: DateTime.now().toIso8601String(),
        place: 'Clorinda',
      ),
    ];
  }

  @override
  Future<bool> savePicture() {
    throw UnimplementedError();
  }

  Future<bool> _saveDetails() async {
    // try {
    //   // final currentUser = _firebaseAuth.currentUser;
    //   final documentReference = firebaseFirestore.collection('pictures').doc();
    //   await documentReference.set();

    //   return documentReference.id;
    // } catch (e) {
    //   log(e.toString());
    // }

    return true;
  }
}
