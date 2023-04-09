// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketModel {
  String get name => throw _privateConstructorUsedError;
  FileModel get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call({String name, FileModel file});

  $FileModelCopyWith<$Res> get file;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FileModelCopyWith<$Res> get file {
    return $FileModelCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicketModelCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$_TicketModelCopyWith(
          _$_TicketModel value, $Res Function(_$_TicketModel) then) =
      __$$_TicketModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, FileModel file});

  @override
  $FileModelCopyWith<$Res> get file;
}

/// @nodoc
class __$$_TicketModelCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$_TicketModel>
    implements _$$_TicketModelCopyWith<$Res> {
  __$$_TicketModelCopyWithImpl(
      _$_TicketModel _value, $Res Function(_$_TicketModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? file = null,
  }) {
    return _then(_$_TicketModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileModel,
    ));
  }
}

/// @nodoc

class _$_TicketModel implements _TicketModel {
  const _$_TicketModel({required this.name, required this.file});

  @override
  final String name;
  @override
  final FileModel file;

  @override
  String toString() {
    return 'TicketModel(name: $name, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketModelCopyWith<_$_TicketModel> get copyWith =>
      __$$_TicketModelCopyWithImpl<_$_TicketModel>(this, _$identity);
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
      {required final String name,
      required final FileModel file}) = _$_TicketModel;

  @override
  String get name;
  @override
  FileModel get file;
  @override
  @JsonKey(ignore: true)
  _$$_TicketModelCopyWith<_$_TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
