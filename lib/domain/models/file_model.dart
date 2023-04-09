import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required Directory path,
    required DownloadFileState downloadState,
  }) = _FileModel;
}

@freezed
class DownloadFileState with _$DownloadFileState {
  const factory DownloadFileState.waiting() = _DownloadFileStateWaiting;
  const factory DownloadFileState.downloading({
    required double downloadPosition,
  }) = _DownloadFileStateDownloading;
  const factory DownloadFileState.completed() = _DownloadFileStateCompleted;
  const factory DownloadFileState.failure() = _DownloadFileStateFailure;
}
