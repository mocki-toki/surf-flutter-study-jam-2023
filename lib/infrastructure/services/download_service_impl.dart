import 'dart:async';

import 'package:dino/dino.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/file_model.dart';
import 'package:surf_flutter_study_jam_2023/domain/services/download_service.dart';

part 'download_service_impl.g.dart';

@Service(ServiceLifetime.singleton)
class DownloadServiceImpl implements DownloadService, Disposable {
  DownloadServiceImpl(this.downloadManager);

  final DownloadManager downloadManager;

  final List<FileModel> _downloadedFiles = [];
  final StreamController<Iterable<FileModel>> _downloadQueryontroller = StreamController.broadcast();

  @override
  Future<void> dispose() {
    return _downloadQueryontroller.close();
  }

  @override
  Stream<Iterable<FileModel>> get downloadQueryStream => _downloadQueryontroller.stream;

  @override
  Future<void> download(FileModel file) async {
    if (_downloadedFiles.indexWhere((e) => e.uri == file.uri) != -1) throw Error();
    final task = await downloadManager.addDownload(file.uri.toString(), file.path.path);

    task?.status.addListener(() => _syncTasks(task, file));
    task?.progress.addListener(() => _syncTasks(task, file));
    downloadManager.pauseDownload(file.uri.toString());
  }

  void _syncTasks(DownloadTask task, FileModel file) {
    if (_downloadedFiles.indexWhere((e) => e.path == file.path) == -1) {
      _downloadedFiles.add(file);
    }
    final index = _downloadedFiles.indexWhere((e) => e.path == file.path);

    switch (task.status.value) {
      case DownloadStatus.queued:
        _downloadedFiles[index] = file.copyWith(
          downloadState: const DownloadFileState.queued(),
        );
        break;
      case DownloadStatus.downloading:
        _downloadedFiles[index] = file.copyWith(
          downloadState: DownloadFileState.downloading(progress: task.progress.value),
        );
        break;
      case DownloadStatus.completed:
        _downloadedFiles[index] = file.copyWith(
          downloadState: const DownloadFileState.completed(),
        );
        break;
      case DownloadStatus.failed:
        _downloadedFiles[index] = file.copyWith(
          downloadState: const DownloadFileState.failure(),
        );
        break;
      case DownloadStatus.paused:
        _downloadedFiles[index] = file.copyWith(
          downloadState: DownloadFileState.paused(progress: task.progress.value),
        );
        break;
      case DownloadStatus.canceled:
        _downloadedFiles.remove(_downloadedFiles[index]);
        break;
    }

    _downloadQueryontroller.add(_downloadedFiles);
  }

  @override
  Future<void> pause(FileModel file) {
    return downloadManager.pauseDownload(_downloadedFiles.firstWhere((e) => e.path == file.path).uri.toString());
  }

  @override
  Future<void> resume(FileModel file) {
    return downloadManager.resumeDownload(_downloadedFiles.firstWhere((e) => e.path == file.path).uri.toString());
  }

  @override
  Future<void> removeFromQueue(FileModel file) {
    return downloadManager.removeDownload(_downloadedFiles.firstWhere((e) => e.path == file.path).uri.toString());
  }
}
