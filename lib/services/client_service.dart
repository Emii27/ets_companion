import 'package:ets_companion/database/daos/client_dao.dart';
import 'package:ets_companion/database/database.dart' show databaseProvider;
import 'package:ets_companion/models/client_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_service.g.dart';

@riverpod
class ClientService extends _$ClientService {
  @override
  Stream<List<ClientModel>> build() {
    return fetchAll();
  }

  Stream<List<ClientModel>> fetchAll() {
    final clientDao = ClientsDao(ref.watch(databaseProvider));
    final clientData = clientDao.getAll();

    return clientData.map(
      (clientList) =>
          clientList.map((client) => ClientModel.fromClient(client)).toList(),
    );
  }

  Future<int> createOrUpdate(ClientModel client) async {
    final clientDao = ClientsDao(ref.watch(databaseProvider));

    return clientDao.createOrUpdate(client);
  }

  Future<int> delete(int id) async {
    final clientDao = ClientsDao(ref.watch(databaseProvider));

    return clientDao.deleteOne(id);
  }
}
