import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';

class PictureRepository implements PictureFacade {
  const PictureRepository({
    required this.firebaseFirestore,
    required this.firebaseStorage,
  });

  final FirebaseFirestore firebaseFirestore;
  final FirebaseStorage firebaseStorage;

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
  Future<String?> savePicture(String imagePath) async {
    try {
      final file = File(imagePath);
      final fileName = imagePath.split('/').last;
      final storageRef = firebaseStorage.ref().child('pictures/$fileName');

      await storageRef.putFile(file);

      return await storageRef.getDownloadURL();
    } catch (e) {
      log(e.toString());
    }

    return null;
  }

  @override
  Future<bool> saveDetails(SavedPicture newPicture) async {
    try {
      // final currentUser = _firebaseAuth.currentUser;
      final documentReference = firebaseFirestore.collection(_pictures).doc();
      await documentReference.set(newPicture.toJson());

      return true;
    } catch (e) {
      log(e.toString());
    }

    return false;
  }
}
