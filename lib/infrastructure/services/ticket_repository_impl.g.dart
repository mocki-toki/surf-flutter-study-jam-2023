// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_repository_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension TicketRepositoryImplFactory on ServiceCollection {
  void addTicketRepositoryImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<TicketRepositoryImpl>(
      lifetime,
      (provider) => TicketRepositoryImpl(
        provider.getRequired<DownloadService>(),
        provider.getRequired<SharedPreferences>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<TicketRepository, TicketRepositoryImpl>(true);
    }
  }
}
