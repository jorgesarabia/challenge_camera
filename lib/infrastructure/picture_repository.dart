import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';

class PictureRepository implements PictureFacade {
  const PictureRepository({
    required this.firebaseFirestore,
  });

  final FirebaseFirestore firebaseFirestore;

  static const _pictures = 'pictures';

  @override
  Future<List<SavedPicture>> getPictures() async {
    try {
      // final currentUser = _firebaseAuth.currentUser;
      final collection = firebaseFirestore.collection(_pictures);
      final pictures = await collection.get();
      final savedPictures = <SavedPicture>[];

      for (var docSnapshot in pictures.docs) {
        final savedPicture = SavedPicture.fromJson(docSnapshot.data());
        savedPictures.add(savedPicture);
      }

      return savedPictures;
    } catch (e) {
      log(e.toString());
    }

    return [];
  }

  @override
  Future<bool> savePicture() async {
    return _saveDetails(
      SavedPicture(
        imgUrl: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
        title: 'Fake Image',
        description: 'Una breve descripcion',
        takedOn: DateTime.now().toIso8601String(),
        place: 'Clorinda',
      ),
    );
  }

  Future<bool> _saveDetails(SavedPicture newPicture) async {
    try {
      // final currentUser = _firebaseAuth.currentUser;
      final documentReference = firebaseFirestore.collection(_pictures).doc();
      await documentReference.set(newPicture.toJson());

      return documentReference.id.isNotEmpty;
    } catch (e) {
      log(e.toString());
    }

    return true;
  }

  @override
  Future<void> takePicture() async {
    // CameraAwesomeBuilder.awesome(
    //   saveConfig: SaveConfig.photo(
    //     pathBuilder: () async {
    //       return '';
    //     },
    //   ),
    //   onMediaTap: (mediaCapture) {
    //     OpenFile.open(mediaCapture.filePath);
    //   },
    // );
  }
}
