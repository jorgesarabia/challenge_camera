import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:challenge_camera/infrastructure/picture_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../utils/firebase_mock_test.mocks.dart';

void main() {
  late PictureRepository pictureRepository;
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockFirebaseStorage mockFirebaseStorage;
  late MockCollectionReference<Map<String, dynamic>> collectionReference;
  late MockQuerySnapshot<Map<String, dynamic>> querySnapshot;
  late MockQueryDocumentSnapshot<Map<String, dynamic>> documentQuerySnapshot;
  late MockDocumentReference<Map<String, dynamic>> documentReference;
  late MockReference mockReference;
  late MockUploadTask mockUploadTask;
  late MockTaskSnapshot mockTaskSnapshot;

  setUp(() {
    collectionReference = MockCollectionReference();
    querySnapshot = MockQuerySnapshot();
    documentQuerySnapshot = MockQueryDocumentSnapshot();
    documentReference = MockDocumentReference();
    mockReference = MockReference();
    mockUploadTask = MockUploadTask();
    mockTaskSnapshot = MockTaskSnapshot();

    mockFirebaseFirestore = MockFirebaseFirestore();
    mockFirebaseStorage = MockFirebaseStorage();
    pictureRepository = PictureRepository(
      firebaseFirestore: mockFirebaseFirestore,
      firebaseStorage: mockFirebaseStorage,
    );
  });

  group('getPictures() ', () {
    test('returns an empty list if there are no data in the database', () async {
      when(mockFirebaseFirestore.collection('pictures')).thenReturn(collectionReference);
      when(collectionReference.get()).thenAnswer((_) async => querySnapshot);
      when(querySnapshot.docs).thenReturn([]);

      final result = await pictureRepository.getPictures();

      expect(result, []);
      verify(mockFirebaseFirestore.collection('pictures')).called(1);
      verify(querySnapshot.docs).called(1);
      verify(collectionReference.get()).called(1);
    });

    test('returns an empty list if there is an exception', () async {
      when(mockFirebaseFirestore.collection('pictures')).thenThrow(Exception('mock error'));
      when(collectionReference.get()).thenAnswer((_) async => querySnapshot);
      when(querySnapshot.docs).thenReturn([]);

      final result = await pictureRepository.getPictures();

      expect(result, []);
      verify(mockFirebaseFirestore.collection('pictures')).called(1);
      verifyNever(querySnapshot.docs);
      verifyNever(collectionReference.get());
    });

    test('return a well formed timestamp if there is values in the database', () async {
      final date = DateTime(2023, 9, 28);
      final mockData = {
        'imgUrl': '',
        'title': '',
        'description': '',
        'takedOn': Timestamp.fromDate(date),
        'place': '',
      };
      when(mockFirebaseFirestore.collection('pictures')).thenReturn(collectionReference);
      when(collectionReference.get()).thenAnswer((_) async => querySnapshot);
      when(querySnapshot.docs).thenReturn([documentQuerySnapshot]);
      when(documentQuerySnapshot.data()).thenReturn(mockData);

      final result = await pictureRepository.getPictures();

      expect(result, [SavedPicture.fromJson(mockData)]);
      expect(result.first.takedOn, '09-28-23');
      verify(mockFirebaseFirestore.collection('pictures')).called(1);
      verify(collectionReference.get()).called(1);
      verify(querySnapshot.docs).called(1);
      verify(documentQuerySnapshot.data()).called(1);
    });
  });

  group('savePicture', () {
    test('must return null when there is an exception', () async {
      when(mockFirebaseStorage.ref()).thenReturn(mockReference);
      when(mockReference.child('pictures/file')).thenReturn(mockReference);
      when(mockReference.putFile(any)).thenThrow(Exception(''));
      when(mockReference.getDownloadURL()).thenAnswer((_) async => 'mock_url');

      final result = await pictureRepository.savePicture('some/file');

      expect(result, isNull);
      verify(mockFirebaseStorage.ref()).called(1);
      verify(mockReference.child('pictures/file')).called(1);
      verify(mockReference.putFile(any)).called(1);
      verifyNever(mockReference.getDownloadURL());
    });

    test('must return ', () async {
      when(mockFirebaseStorage.ref()).thenReturn(mockReference);
      when(mockReference.child('pictures/file')).thenReturn(mockReference);
      when(mockReference.putFile(any)).thenAnswer((_) => mockUploadTask);
      when(mockUploadTask.snapshot).thenReturn(mockTaskSnapshot);
      when(mockTaskSnapshot.ref).thenReturn(mockReference);
      when(mockReference.getDownloadURL()).thenAnswer((_) async => 'mock_url');

      final result = await pictureRepository.savePicture('some/file');

      expect(result, 'mock_url');
      verify(mockFirebaseStorage.ref()).called(1);
      verify(mockReference.child('pictures/file')).called(1);
      verify(mockReference.putFile(any)).called(1);
      verify(mockReference.getDownloadURL()).called(1);
    });
  });

  group('saveDetails()', () {
    const saved = SavedPicture();

    test('must return false if there were an exception', () async {
      when(mockFirebaseFirestore.collection('pictures')).thenThrow(Exception('mock error'));
      when(collectionReference.doc()).thenReturn(documentReference);
      when(documentReference.set(any)).thenAnswer((_) async => any);

      final result = await pictureRepository.saveDetails(saved);

      expect(result, isFalse);
      verify(mockFirebaseFirestore.collection('pictures')).called(1);
      verifyNever(collectionReference.doc());
      verifyNever(documentReference.set(any));
    });

    test('must return false if there were an exception', () async {
      final data = saved.toJson();
      data['takedOn'] = FieldValue.serverTimestamp();

      when(mockFirebaseFirestore.collection('pictures')).thenReturn(collectionReference);
      when(collectionReference.doc()).thenReturn(documentReference);
      when(documentReference.set(data)).thenAnswer((_) async => '');

      final result = await pictureRepository.saveDetails(saved);

      expect(result, isTrue);
      verify(mockFirebaseFirestore.collection('pictures')).called(1);
      verify(collectionReference.doc()).called(1);
      verify(documentReference.set(data)).called(1);
    });
  });
}
