// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_service_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension DownloadServiceImplFactory on ServiceCollection {
  void addDownloadServiceImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<DownloadServiceImpl>(
      lifetime,
      (provider) => DownloadServiceImpl(
        provider.getRequired<DownloadManager>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<DownloadService, DownloadServiceImpl>(true);
      addAlias<Disposable, DownloadServiceImpl>(true);
    }
  }
}
