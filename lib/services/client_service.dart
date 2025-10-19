import 'package:ets_companion/database/daos/client_dao.dart';
import 'package:ets_companion/database/database.dart' show databaseProvider;
import 'package:ets_companion/models/client_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_service.g.dart';

@riverpod
class ClientService extends _$ClientService {
  @override
  Future<List<Client>> build() async {
    return fetchAll();
  }

  Future<List<Client>> fetchAll() async {
    final clientDao = ClientsDao(ref.watch(databaseProvider));
    final clientData = await clientDao.getAll();

    return clientData.map((client) => Client.fromClientData(client)).toList();
  }

  Future<int> createOrUpdate(Client client) async {
    final clientDao = ClientsDao(ref.watch(databaseProvider));

    return clientDao.createOrUpdate(client.toClientData());
  }

  Future<bool> delete(Client client) async {
    final clientDao = ClientsDao(ref.watch(databaseProvider));

    return clientDao.deleteOne(client.toClientData());
  }
}
