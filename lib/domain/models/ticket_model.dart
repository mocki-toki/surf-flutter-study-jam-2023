import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/domain/models/file_model.dart';

part 'ticket_model.freezed.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required String name,
    required FileModel file,
  }) = _TicketModel;
}
