import 'package:ets_companion/database/database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';

@freezed
abstract class ClientModel with _$ClientModel {
  const factory ClientModel({int? id, required String name}) = _ClientModel;

  factory ClientModel.fromClient(Client client) =>
      ClientModel(id: client.id, name: client.name);
}
