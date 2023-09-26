import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_picture.freezed.dart';
part 'saved_picture.g.dart';

@freezed
class SavedPicture with _$SavedPicture {
  factory SavedPicture({
    String? imgUrl,
    String? title,
    String? description,
    String? takedOn,
    String? place,
  }) = _SavedPicture;

  factory SavedPicture.fromJson(Map<String, dynamic> json) => _$SavedPictureFromJson(json);
}
