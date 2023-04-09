import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_storage_state.freezed.dart';

@freezed
class TicketStorageState with _$TicketStorageState {
  const factory TicketStorageState.empty() = _Empty;
  const factory TicketStorageState.loading() = _Loading;
  const factory TicketStorageState.failure() = _Failure;
  const factory TicketStorageState.loaded({required UnmodifiableListView items}) = _Loaded;
}
