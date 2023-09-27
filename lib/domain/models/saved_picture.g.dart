// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedPicture _$$_SavedPictureFromJson(Map<String, dynamic> json) =>
    _$_SavedPicture(
      imgUrl: json['imgUrl'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      takedOn: json['takedOn'] as String?,
      place: json['place'] as String?,
    );

Map<String, dynamic> _$$_SavedPictureToJson(_$_SavedPicture instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imgUrl', instance.imgUrl);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('takedOn', instance.takedOn);
  writeNotNull('place', instance.place);
  return val;
}
