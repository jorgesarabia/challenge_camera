// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedPicture _$SavedPictureFromJson(Map<String, dynamic> json) {
  return _SavedPicture.fromJson(json);
}

/// @nodoc
mixin _$SavedPicture {
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get takedOn => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPictureCopyWith<SavedPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPictureCopyWith<$Res> {
  factory $SavedPictureCopyWith(
          SavedPicture value, $Res Function(SavedPicture) then) =
      _$SavedPictureCopyWithImpl<$Res, SavedPicture>;
  @useResult
  $Res call(
      {String? imgUrl,
      String? title,
      String? description,
      String? takedOn,
      String? place});
}

/// @nodoc
class _$SavedPictureCopyWithImpl<$Res, $Val extends SavedPicture>
    implements $SavedPictureCopyWith<$Res> {
  _$SavedPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? takedOn = freezed,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      takedOn: freezed == takedOn
          ? _value.takedOn
          : takedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedPictureCopyWith<$Res>
    implements $SavedPictureCopyWith<$Res> {
  factory _$$_SavedPictureCopyWith(
          _$_SavedPicture value, $Res Function(_$_SavedPicture) then) =
      __$$_SavedPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imgUrl,
      String? title,
      String? description,
      String? takedOn,
      String? place});
}

/// @nodoc
class __$$_SavedPictureCopyWithImpl<$Res>
    extends _$SavedPictureCopyWithImpl<$Res, _$_SavedPicture>
    implements _$$_SavedPictureCopyWith<$Res> {
  __$$_SavedPictureCopyWithImpl(
      _$_SavedPicture _value, $Res Function(_$_SavedPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? takedOn = freezed,
    Object? place = freezed,
  }) {
    return _then(_$_SavedPicture(
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      takedOn: freezed == takedOn
          ? _value.takedOn
          : takedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedPicture implements _SavedPicture {
  _$_SavedPicture(
      {this.imgUrl, this.title, this.description, this.takedOn, this.place});

  factory _$_SavedPicture.fromJson(Map<String, dynamic> json) =>
      _$$_SavedPictureFromJson(json);

  @override
  final String? imgUrl;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? takedOn;
  @override
  final String? place;

  @override
  String toString() {
    return 'SavedPicture(imgUrl: $imgUrl, title: $title, description: $description, takedOn: $takedOn, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedPicture &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.takedOn, takedOn) || other.takedOn == takedOn) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imgUrl, title, description, takedOn, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedPictureCopyWith<_$_SavedPicture> get copyWith =>
      __$$_SavedPictureCopyWithImpl<_$_SavedPicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedPictureToJson(
      this,
    );
  }
}

abstract class _SavedPicture implements SavedPicture {
  factory _SavedPicture(
      {final String? imgUrl,
      final String? title,
      final String? description,
      final String? takedOn,
      final String? place}) = _$_SavedPicture;

  factory _SavedPicture.fromJson(Map<String, dynamic> json) =
      _$_SavedPicture.fromJson;

  @override
  String? get imgUrl;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get takedOn;
  @override
  String? get place;
  @override
  @JsonKey(ignore: true)
  _$$_SavedPictureCopyWith<_$_SavedPicture> get copyWith =>
      throw _privateConstructorUsedError;
}
