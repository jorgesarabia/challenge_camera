import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'firebase_mock_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseFirestore>(),
  MockSpec<QuerySnapshot>(),
  MockSpec<CollectionReference>(),
  MockSpec<QueryDocumentSnapshot>(),
  MockSpec<DocumentReference>(),
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
}
