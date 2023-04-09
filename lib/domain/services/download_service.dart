import 'dart:collection';

import 'package:surf_flutter_study_jam_2023/domain/models/file_model.dart';

abstract class DownloadService {
  Stream<UnmodifiableListView<FileModel>> get downloadQueryStream;
  Future<void> download(FileModel file);
  Future<void> pause(FileModel file);
  Future<void> delete(FileModel file);
}
