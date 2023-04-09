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
    final task = await downloadManager.addDownload(file.uri.toString(), file.path.path);

    task?.status.addListener(() {
      _syncTasks(task, file);
    });

    task?.progress.addListener(() {
      _syncTasks(task, file);
    });
  }

  void _syncTasks(DownloadTask task, FileModel file) {
    if (!_downloadedFiles.contains(file)) _downloadedFiles.add(file);
    var fileInQueue = _downloadedFiles[_downloadedFiles.indexOf(file)];

    switch (task.status.value) {
      case DownloadStatus.queued:
        fileInQueue = fileInQueue.copyWith(
          downloadState: const DownloadFileState.queued(),
        );
        break;
      case DownloadStatus.downloading:
        fileInQueue = fileInQueue.copyWith(
          downloadState: DownloadFileState.downloading(progress: task.progress.value),
        );
        break;
      case DownloadStatus.completed:
        fileInQueue = fileInQueue.copyWith(
          downloadState: const DownloadFileState.completed(),
        );
        break;
      case DownloadStatus.failed:
        fileInQueue = fileInQueue.copyWith(
          downloadState: const DownloadFileState.failure(),
        );
        break;
      case DownloadStatus.paused:
        fileInQueue = fileInQueue.copyWith(
          downloadState: DownloadFileState.paused(progress: task.progress.value),
        );
        break;
      case DownloadStatus.canceled:
        _downloadedFiles.remove(fileInQueue);
        break;
    }

    _downloadQueryontroller.add(_downloadedFiles);
  }

  @override
  Future<void> pause(FileModel file) {
    return downloadManager.pauseDownload(_downloadedFiles.firstWhere((e) => e == file).uri.toString());
  }
}
