import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required Directory path,
    required Uri uri,
    required DownloadFileState downloadState,
  }) = _FileModel;
}

@freezed
class DownloadFileState with _$DownloadFileState {
  const factory DownloadFileState.queued() = _DownloadFileStateWaiting;

  const factory DownloadFileState.downloading({
    required double progress,
  }) = _DownloadFileStateDownloading;

  const factory DownloadFileState.paused({
    required double progress,
  }) = _DownloadFileStatePaused;

  const factory DownloadFileState.failure() = _DownloadFileStateFailure;

  const factory DownloadFileState.completed() = _DownloadFileStateCompleted;
}
