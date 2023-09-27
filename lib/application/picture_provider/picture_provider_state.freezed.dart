// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PictureProviderState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  List<SavedPicture> get savedPictures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PictureProviderStateCopyWith<PictureProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureProviderStateCopyWith<$Res> {
  factory $PictureProviderStateCopyWith(PictureProviderState value,
          $Res Function(PictureProviderState) then) =
      _$PictureProviderStateCopyWithImpl<$Res, PictureProviderState>;
  @useResult
  $Res call({bool isSubmitting, List<SavedPicture> savedPictures});
}

/// @nodoc
class _$PictureProviderStateCopyWithImpl<$Res,
        $Val extends PictureProviderState>
    implements $PictureProviderStateCopyWith<$Res> {
  _$PictureProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? savedPictures = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      savedPictures: null == savedPictures
          ? _value.savedPictures
          : savedPictures // ignore: cast_nullable_to_non_nullable
              as List<SavedPicture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PictureProviderStateCopyWith<$Res>
    implements $PictureProviderStateCopyWith<$Res> {
  factory _$$_PictureProviderStateCopyWith(_$_PictureProviderState value,
          $Res Function(_$_PictureProviderState) then) =
      __$$_PictureProviderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSubmitting, List<SavedPicture> savedPictures});
}

/// @nodoc
class __$$_PictureProviderStateCopyWithImpl<$Res>
    extends _$PictureProviderStateCopyWithImpl<$Res, _$_PictureProviderState>
    implements _$$_PictureProviderStateCopyWith<$Res> {
  __$$_PictureProviderStateCopyWithImpl(_$_PictureProviderState _value,
      $Res Function(_$_PictureProviderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? savedPictures = null,
  }) {
    return _then(_$_PictureProviderState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      savedPictures: null == savedPictures
          ? _value._savedPictures
          : savedPictures // ignore: cast_nullable_to_non_nullable
              as List<SavedPicture>,
    ));
  }
}

/// @nodoc

class _$_PictureProviderState implements _PictureProviderState {
  const _$_PictureProviderState(
      {this.isSubmitting = false,
      final List<SavedPicture> savedPictures = const <SavedPicture>[]})
      : _savedPictures = savedPictures;

  @override
  @JsonKey()
  final bool isSubmitting;
  final List<SavedPicture> _savedPictures;
  @override
  @JsonKey()
  List<SavedPicture> get savedPictures {
    if (_savedPictures is EqualUnmodifiableListView) return _savedPictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedPictures);
  }

  @override
  String toString() {
    return 'PictureProviderState(isSubmitting: $isSubmitting, savedPictures: $savedPictures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PictureProviderState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other._savedPictures, _savedPictures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting,
      const DeepCollectionEquality().hash(_savedPictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PictureProviderStateCopyWith<_$_PictureProviderState> get copyWith =>
      __$$_PictureProviderStateCopyWithImpl<_$_PictureProviderState>(
          this, _$identity);
}

abstract class _PictureProviderState implements PictureProviderState {
  const factory _PictureProviderState(
      {final bool isSubmitting,
      final List<SavedPicture> savedPictures}) = _$_PictureProviderState;

  @override
  bool get isSubmitting;
  @override
  List<SavedPicture> get savedPictures;
  @override
  @JsonKey(ignore: true)
  _$$_PictureProviderStateCopyWith<_$_PictureProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}
