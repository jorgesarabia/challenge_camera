import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_form.freezed.dart';

@freezed
class PictureForm with _$PictureForm {
  const factory PictureForm({
    String? imgPath,
    String? title,
    String? description,
    String? place,
  }) = _PictureForm;
}
