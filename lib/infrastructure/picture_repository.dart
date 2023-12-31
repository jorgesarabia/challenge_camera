import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:intl/intl.dart';

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
      final collection = firebaseFirestore.collection(_pictures);
      final pictures = await collection.get();
      final savedPictures = <SavedPicture>[];

      for (var docSnapshot in pictures.docs) {
        final data = docSnapshot.data();
        final dateTime = (data['takedOn'] as Timestamp).toDate();
        final day = DateFormat('MM-d-yy').format(dateTime);

        data['takedOn'] = day;
        final savedPicture = SavedPicture.fromJson(data);
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

      final uploadTask = storageRef.putFile(file);
      final taskSnapshot = await uploadTask.whenComplete(() => null);
      final ref = taskSnapshot.ref;

      return await ref.getDownloadURL();
    } catch (e) {
      log(e.toString());
    }

    return null;
  }

  @override
  Future<bool> saveDetails(SavedPicture newPicture) async {
    try {
      final documentReference = firebaseFirestore.collection(_pictures).doc();
      final data = newPicture.toJson();
      data.putIfAbsent('takedOn', () => FieldValue.serverTimestamp());
      await documentReference.set(data);

      return true;
    } catch (e) {
      log(e.toString());
    }

    return false;
  }
}
