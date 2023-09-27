import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'firebase_mock_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseFirestore>(),
  MockSpec<QuerySnapshot>(),
  MockSpec<CollectionReference>(),
  MockSpec<QueryDocumentSnapshot>(),
  MockSpec<DocumentReference>(),
  MockSpec<FirebaseStorage>(),
  MockSpec<Reference>(),
  MockSpec<UploadTask>(),
  MockSpec<TaskSnapshot>(),
])
void main() {
  test('the mock generation FirebaseFirestore exist', () {
    expect(MockFirebaseFirestore(), const TypeMatcher<FirebaseFirestore>());
  });

  test('the mock generation QuerySnapshot exists', () {
    expect(MockQuerySnapshot(), const TypeMatcher<QuerySnapshot>());
  });

  test('the mock generation CollectionReference exists', () {
    expect(MockCollectionReference(), const TypeMatcher<CollectionReference>());
  });

  test('the mock generation QueryDocumentSnapshot exists', () {
    expect(MockQueryDocumentSnapshot(), const TypeMatcher<QueryDocumentSnapshot>());
  });

  test('the mock generation DocumentReference exists', () {
    expect(MockDocumentReference(), const TypeMatcher<DocumentReference>());
  });

  test('the mock generation FirebaseStorage exists', () {
    expect(MockFirebaseStorage(), const TypeMatcher<FirebaseStorage>());
  });

  test('the mock generation Reference exists', () {
    expect(MockReference(), const TypeMatcher<Reference>());
  });

  test('the mock generation UploadTask exists', () {
    expect(MockUploadTask(), const TypeMatcher<UploadTask>());
  });

  test('the mock generation TaskSnapshot exists', () {
    expect(MockTaskSnapshot(), const TypeMatcher<TaskSnapshot>());
  });
}
