// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileModel {
  Directory get path => throw _privateConstructorUsedError;
  Uri get uri => throw _privateConstructorUsedError;
  DownloadFileState get downloadState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call({Directory path, Uri uri, DownloadFileState downloadState});

  $DownloadFileStateCopyWith<$Res> get downloadState;
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? uri = null,
    Object? downloadState = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Directory,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      downloadState: null == downloadState
          ? _value.downloadState
          : downloadState // ignore: cast_nullable_to_non_nullable
              as DownloadFileState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DownloadFileStateCopyWith<$Res> get downloadState {
    return $DownloadFileStateCopyWith<$Res>(_value.downloadState, (value) {
      return _then(_value.copyWith(downloadState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FileModelCopyWith<$Res> implements $FileModelCopyWith<$Res> {
  factory _$$_FileModelCopyWith(
          _$_FileModel value, $Res Function(_$_FileModel) then) =
      __$$_FileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Directory path, Uri uri, DownloadFileState downloadState});

  @override
  $DownloadFileStateCopyWith<$Res> get downloadState;
}

/// @nodoc
class __$$_FileModelCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$_FileModel>
    implements _$$_FileModelCopyWith<$Res> {
  __$$_FileModelCopyWithImpl(
      _$_FileModel _value, $Res Function(_$_FileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? uri = null,
    Object? downloadState = null,
  }) {
    return _then(_$_FileModel(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as Directory,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      downloadState: null == downloadState
          ? _value.downloadState
          : downloadState // ignore: cast_nullable_to_non_nullable
              as DownloadFileState,
    ));
  }
}

/// @nodoc

class _$_FileModel implements _FileModel {
  const _$_FileModel(
      {required this.path, required this.uri, required this.downloadState});

  @override
  final Directory path;
  @override
  final Uri uri;
  @override
  final DownloadFileState downloadState;

  @override
  String toString() {
    return 'FileModel(path: $path, uri: $uri, downloadState: $downloadState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileModel &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.downloadState, downloadState) ||
                other.downloadState == downloadState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, uri, downloadState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      __$$_FileModelCopyWithImpl<_$_FileModel>(this, _$identity);
}

abstract class _FileModel implements FileModel {
  const factory _FileModel(
      {required final Directory path,
      required final Uri uri,
      required final DownloadFileState downloadState}) = _$_FileModel;

  @override
  Directory get path;
  @override
  Uri get uri;
  @override
  DownloadFileState get downloadState;
  @override
  @JsonKey(ignore: true)
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queued,
    required TResult Function(double progress) downloading,
    required TResult Function(double progress) paused,
    required TResult Function() failure,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? queued,
    TResult? Function(double progress)? downloading,
    TResult? Function(double progress)? paused,
    TResult? Function()? failure,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queued,
    TResult Function(double progress)? downloading,
    TResult Function(double progress)? paused,
    TResult Function()? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFileStateWaiting value) queued,
    required TResult Function(_DownloadFileStateDownloading value) downloading,
    required TResult Function(_DownloadFileStatePaused value) paused,
    required TResult Function(_DownloadFileStateFailure value) failure,
    required TResult Function(_DownloadFileStateCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFileStateWaiting value)? queued,
    TResult? Function(_DownloadFileStateDownloading value)? downloading,
    TResult? Function(_DownloadFileStatePaused value)? paused,
    TResult? Function(_DownloadFileStateFailure value)? failure,
    TResult? Function(_DownloadFileStateCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFileStateWaiting value)? queued,
    TResult Function(_DownloadFileStateDownloading value)? downloading,
    TResult Function(_DownloadFileStatePaused value)? paused,
    TResult Function(_DownloadFileStateFailure value)? failure,
    TResult Function(_DownloadFileStateCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadFileStateCopyWith<$Res> {
  factory $DownloadFileStateCopyWith(
          DownloadFileState value, $Res Function(DownloadFileState) then) =
      _$DownloadFileStateCopyWithImpl<$Res, DownloadFileState>;
}

/// @nodoc
class _$DownloadFileStateCopyWithImpl<$Res, $Val extends DownloadFileState>
    implements $DownloadFileStateCopyWith<$Res> {
  _$DownloadFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DownloadFileStateWaitingCopyWith<$Res> {
  factory _$$_DownloadFileStateWaitingCopyWith(
          _$_DownloadFileStateWaiting value,
          $Res Function(_$_DownloadFileStateWaiting) then) =
      __$$_DownloadFileStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadFileStateWaitingCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$_DownloadFileStateWaiting>
    implements _$$_DownloadFileStateWaitingCopyWith<$Res> {
  __$$_DownloadFileStateWaitingCopyWithImpl(_$_DownloadFileStateWaiting _value,
      $Res Function(_$_DownloadFileStateWaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DownloadFileStateWaiting implements _DownloadFileStateWaiting {
  const _$_DownloadFileStateWaiting();

  @override
  String toString() {
    return 'DownloadFileState.queued()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFileStateWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queued,
    required TResult Function(double progress) downloading,
    required TResult Function(double progress) paused,
    required TResult Function() failure,
    required TResult Function() completed,
  }) {
    return queued();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? queued,
    TResult? Function(double progress)? downloading,
    TResult? Function(double progress)? paused,
    TResult? Function()? failure,
    TResult? Function()? completed,
  }) {
    return queued?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queued,
    TResult Function(double progress)? downloading,
    TResult Function(double progress)? paused,
    TResult Function()? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFileStateWaiting value) queued,
    required TResult Function(_DownloadFileStateDownloading value) downloading,
    required TResult Function(_DownloadFileStatePaused value) paused,
    required TResult Function(_DownloadFileStateFailure value) failure,
    required TResult Function(_DownloadFileStateCompleted value) completed,
  }) {
    return queued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFileStateWaiting value)? queued,
    TResult? Function(_DownloadFileStateDownloading value)? downloading,
    TResult? Function(_DownloadFileStatePaused value)? paused,
    TResult? Function(_DownloadFileStateFailure value)? failure,
    TResult? Function(_DownloadFileStateCompleted value)? completed,
  }) {
    return queued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFileStateWaiting value)? queued,
    TResult Function(_DownloadFileStateDownloading value)? downloading,
    TResult Function(_DownloadFileStatePaused value)? paused,
    TResult Function(_DownloadFileStateFailure value)? failure,
    TResult Function(_DownloadFileStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued(this);
    }
    return orElse();
  }
}

abstract class _DownloadFileStateWaiting implements DownloadFileState {
  const factory _DownloadFileStateWaiting() = _$_DownloadFileStateWaiting;
}

/// @nodoc
abstract class _$$_DownloadFileStateDownloadingCopyWith<$Res> {
  factory _$$_DownloadFileStateDownloadingCopyWith(
          _$_DownloadFileStateDownloading value,
          $Res Function(_$_DownloadFileStateDownloading) then) =
      __$$_DownloadFileStateDownloadingCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_DownloadFileStateDownloadingCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res,
        _$_DownloadFileStateDownloading>
    implements _$$_DownloadFileStateDownloadingCopyWith<$Res> {
  __$$_DownloadFileStateDownloadingCopyWithImpl(
      _$_DownloadFileStateDownloading _value,
      $Res Function(_$_DownloadFileStateDownloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_DownloadFileStateDownloading(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DownloadFileStateDownloading implements _DownloadFileStateDownloading {
  const _$_DownloadFileStateDownloading({required this.progress});

  @override
  final double progress;

  @override
  String toString() {
    return 'DownloadFileState.downloading(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFileStateDownloading &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadFileStateDownloadingCopyWith<_$_DownloadFileStateDownloading>
      get copyWith => __$$_DownloadFileStateDownloadingCopyWithImpl<
          _$_DownloadFileStateDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queued,
    required TResult Function(double progress) downloading,
    required TResult Function(double progress) paused,
    required TResult Function() failure,
    required TResult Function() completed,
  }) {
    return downloading(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? queued,
    TResult? Function(double progress)? downloading,
    TResult? Function(double progress)? paused,
    TResult? Function()? failure,
    TResult? Function()? completed,
  }) {
    return downloading?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queued,
    TResult Function(double progress)? downloading,
    TResult Function(double progress)? paused,
    TResult Function()? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFileStateWaiting value) queued,
    required TResult Function(_DownloadFileStateDownloading value) downloading,
    required TResult Function(_DownloadFileStatePaused value) paused,
    required TResult Function(_DownloadFileStateFailure value) failure,
    required TResult Function(_DownloadFileStateCompleted value) completed,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFileStateWaiting value)? queued,
    TResult? Function(_DownloadFileStateDownloading value)? downloading,
    TResult? Function(_DownloadFileStatePaused value)? paused,
    TResult? Function(_DownloadFileStateFailure value)? failure,
    TResult? Function(_DownloadFileStateCompleted value)? completed,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFileStateWaiting value)? queued,
    TResult Function(_DownloadFileStateDownloading value)? downloading,
    TResult Function(_DownloadFileStatePaused value)? paused,
    TResult Function(_DownloadFileStateFailure value)? failure,
    TResult Function(_DownloadFileStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _DownloadFileStateDownloading implements DownloadFileState {
  const factory _DownloadFileStateDownloading(
      {required final double progress}) = _$_DownloadFileStateDownloading;

  double get progress;
  @JsonKey(ignore: true)
  _$$_DownloadFileStateDownloadingCopyWith<_$_DownloadFileStateDownloading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadFileStatePausedCopyWith<$Res> {
  factory _$$_DownloadFileStatePausedCopyWith(_$_DownloadFileStatePaused value,
          $Res Function(_$_DownloadFileStatePaused) then) =
      __$$_DownloadFileStatePausedCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$_DownloadFileStatePausedCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$_DownloadFileStatePaused>
    implements _$$_DownloadFileStatePausedCopyWith<$Res> {
  __$$_DownloadFileStatePausedCopyWithImpl(_$_DownloadFileStatePaused _value,
      $Res Function(_$_DownloadFileStatePaused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$_DownloadFileStatePaused(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DownloadFileStatePaused implements _DownloadFileStatePaused {
  const _$_DownloadFileStatePaused({required this.progress});

  @override
  final double progress;

  @override
  String toString() {
    return 'DownloadFileState.paused(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFileStatePaused &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadFileStatePausedCopyWith<_$_DownloadFileStatePaused>
      get copyWith =>
          __$$_DownloadFileStatePausedCopyWithImpl<_$_DownloadFileStatePaused>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queued,
    required TResult Function(double progress) downloading,
    required TResult Function(double progress) paused,
    required TResult Function() failure,
    required TResult Function() completed,
  }) {
    return paused(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? queued,
    TResult? Function(double progress)? downloading,
    TResult? Function(double progress)? paused,
    TResult? Function()? failure,
    TResult? Function()? completed,
  }) {
    return paused?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queued,
    TResult Function(double progress)? downloading,
    TResult Function(double progress)? paused,
    TResult Function()? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFileStateWaiting value) queued,
    required TResult Function(_DownloadFileStateDownloading value) downloading,
    required TResult Function(_DownloadFileStatePaused value) paused,
    required TResult Function(_DownloadFileStateFailure value) failure,
    required TResult Function(_DownloadFileStateCompleted value) completed,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFileStateWaiting value)? queued,
    TResult? Function(_DownloadFileStateDownloading value)? downloading,
    TResult? Function(_DownloadFileStatePaused value)? paused,
    TResult? Function(_DownloadFileStateFailure value)? failure,
    TResult? Function(_DownloadFileStateCompleted value)? completed,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFileStateWaiting value)? queued,
    TResult Function(_DownloadFileStateDownloading value)? downloading,
    TResult Function(_DownloadFileStatePaused value)? paused,
    TResult Function(_DownloadFileStateFailure value)? failure,
    TResult Function(_DownloadFileStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _DownloadFileStatePaused implements DownloadFileState {
  const factory _DownloadFileStatePaused({required final double progress}) =
      _$_DownloadFileStatePaused;

  double get progress;
  @JsonKey(ignore: true)
  _$$_DownloadFileStatePausedCopyWith<_$_DownloadFileStatePaused>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadFileStateFailureCopyWith<$Res> {
  factory _$$_DownloadFileStateFailureCopyWith(
          _$_DownloadFileStateFailure value,
          $Res Function(_$_DownloadFileStateFailure) then) =
      __$$_DownloadFileStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadFileStateFailureCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$_DownloadFileStateFailure>
    implements _$$_DownloadFileStateFailureCopyWith<$Res> {
  __$$_DownloadFileStateFailureCopyWithImpl(_$_DownloadFileStateFailure _value,
      $Res Function(_$_DownloadFileStateFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DownloadFileStateFailure implements _DownloadFileStateFailure {
  const _$_DownloadFileStateFailure();

  @override
  String toString() {
    return 'DownloadFileState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFileStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queued,
    required TResult Function(double progress) downloading,
    required TResult Function(double progress) paused,
    required TResult Function() failure,
    required TResult Function() completed,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? queued,
    TResult? Function(double progress)? downloading,
    TResult? Function(double progress)? paused,
    TResult? Function()? failure,
    TResult? Function()? completed,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queued,
    TResult Function(double progress)? downloading,
    TResult Function(double progress)? paused,
    TResult Function()? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFileStateWaiting value) queued,
    required TResult Function(_DownloadFileStateDownloading value) downloading,
    required TResult Function(_DownloadFileStatePaused value) paused,
    required TResult Function(_DownloadFileStateFailure value) failure,
    required TResult Function(_DownloadFileStateCompleted value) completed,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFileStateWaiting value)? queued,
    TResult? Function(_DownloadFileStateDownloading value)? downloading,
    TResult? Function(_DownloadFileStatePaused value)? paused,
    TResult? Function(_DownloadFileStateFailure value)? failure,
    TResult? Function(_DownloadFileStateCompleted value)? completed,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFileStateWaiting value)? queued,
    TResult Function(_DownloadFileStateDownloading value)? downloading,
    TResult Function(_DownloadFileStatePaused value)? paused,
    TResult Function(_DownloadFileStateFailure value)? failure,
    TResult Function(_DownloadFileStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _DownloadFileStateFailure implements DownloadFileState {
  const factory _DownloadFileStateFailure() = _$_DownloadFileStateFailure;
}

/// @nodoc
abstract class _$$_DownloadFileStateCompletedCopyWith<$Res> {
  factory _$$_DownloadFileStateCompletedCopyWith(
          _$_DownloadFileStateCompleted value,
          $Res Function(_$_DownloadFileStateCompleted) then) =
      __$$_DownloadFileStateCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadFileStateCompletedCopyWithImpl<$Res>
    extends _$DownloadFileStateCopyWithImpl<$Res, _$_DownloadFileStateCompleted>
    implements _$$_DownloadFileStateCompletedCopyWith<$Res> {
  __$$_DownloadFileStateCompletedCopyWithImpl(
      _$_DownloadFileStateCompleted _value,
      $Res Function(_$_DownloadFileStateCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DownloadFileStateCompleted implements _DownloadFileStateCompleted {
  const _$_DownloadFileStateCompleted();

  @override
  String toString() {
    return 'DownloadFileState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadFileStateCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queued,
    required TResult Function(double progress) downloading,
    required TResult Function(double progress) paused,
    required TResult Function() failure,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? queued,
    TResult? Function(double progress)? downloading,
    TResult? Function(double progress)? paused,
    TResult? Function()? failure,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queued,
    TResult Function(double progress)? downloading,
    TResult Function(double progress)? paused,
    TResult Function()? failure,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadFileStateWaiting value) queued,
    required TResult Function(_DownloadFileStateDownloading value) downloading,
    required TResult Function(_DownloadFileStatePaused value) paused,
    required TResult Function(_DownloadFileStateFailure value) failure,
    required TResult Function(_DownloadFileStateCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadFileStateWaiting value)? queued,
    TResult? Function(_DownloadFileStateDownloading value)? downloading,
    TResult? Function(_DownloadFileStatePaused value)? paused,
    TResult? Function(_DownloadFileStateFailure value)? failure,
    TResult? Function(_DownloadFileStateCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadFileStateWaiting value)? queued,
    TResult Function(_DownloadFileStateDownloading value)? downloading,
    TResult Function(_DownloadFileStatePaused value)? paused,
    TResult Function(_DownloadFileStateFailure value)? failure,
    TResult Function(_DownloadFileStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _DownloadFileStateCompleted implements DownloadFileState {
  const factory _DownloadFileStateCompleted() = _$_DownloadFileStateCompleted;
}
