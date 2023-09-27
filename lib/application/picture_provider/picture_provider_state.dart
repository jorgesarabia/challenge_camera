import 'package:challenge_camera/domain/models/saved_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_provider_state.freezed.dart';

@freezed
class PictureProviderState with _$PictureProviderState {
  const factory PictureProviderState({
    @Default(false) bool isSubmitting,
    @Default(<SavedPicture>[]) List<SavedPicture> savedPictures,
  }) = _PictureProviderState;
}
