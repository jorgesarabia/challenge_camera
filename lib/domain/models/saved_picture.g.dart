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

Map<String, dynamic> _$$_SavedPictureToJson(_$_SavedPicture instance) =>
    <String, dynamic>{
      'imgUrl': instance.imgUrl,
      'title': instance.title,
      'description': instance.description,
      'takedOn': instance.takedOn,
      'place': instance.place,
    };
