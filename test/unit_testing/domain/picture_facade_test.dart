import 'package:challenge_camera/domain/facades/picture_facade.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'picture_facade_test.mocks.dart';

@GenerateMocks([PictureFacade])
void main() {
  test('the mock generation exists', () {
    expect(MockPictureFacade(), const TypeMatcher<PictureFacade>());
  });
}
