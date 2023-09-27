// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PictureForm {
  String? get imgPath => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PictureFormCopyWith<PictureForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureFormCopyWith<$Res> {
  factory $PictureFormCopyWith(
          PictureForm value, $Res Function(PictureForm) then) =
      _$PictureFormCopyWithImpl<$Res, PictureForm>;
  @useResult
  $Res call(
      {String? imgPath, String? title, String? description, String? place});
}

/// @nodoc
class _$PictureFormCopyWithImpl<$Res, $Val extends PictureForm>
    implements $PictureFormCopyWith<$Res> {
  _$PictureFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgPath = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PictureFormCopyWith<$Res>
    implements $PictureFormCopyWith<$Res> {
  factory _$$_PictureFormCopyWith(
          _$_PictureForm value, $Res Function(_$_PictureForm) then) =
      __$$_PictureFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imgPath, String? title, String? description, String? place});
}

/// @nodoc
class __$$_PictureFormCopyWithImpl<$Res>
    extends _$PictureFormCopyWithImpl<$Res, _$_PictureForm>
    implements _$$_PictureFormCopyWith<$Res> {
  __$$_PictureFormCopyWithImpl(
      _$_PictureForm _value, $Res Function(_$_PictureForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imgPath = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? place = freezed,
  }) {
    return _then(_$_PictureForm(
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PictureForm implements _PictureForm {
  const _$_PictureForm(
      {this.imgPath, this.title, this.description, this.place});

  @override
  final String? imgPath;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? place;

  @override
  String toString() {
    return 'PictureForm(imgPath: $imgPath, title: $title, description: $description, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PictureForm &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imgPath, title, description, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PictureFormCopyWith<_$_PictureForm> get copyWith =>
      __$$_PictureFormCopyWithImpl<_$_PictureForm>(this, _$identity);
}

abstract class _PictureForm implements PictureForm {
  const factory _PictureForm(
      {final String? imgPath,
      final String? title,
      final String? description,
      final String? place}) = _$_PictureForm;

  @override
  String? get imgPath;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get place;
  @override
  @JsonKey(ignore: true)
  _$$_PictureFormCopyWith<_$_PictureForm> get copyWith =>
      throw _privateConstructorUsedError;
}
