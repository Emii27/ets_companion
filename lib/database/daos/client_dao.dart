import 'package:drift/drift.dart';
import 'package:ets_companion/database/database.dart';
import 'package:ets_companion/database/tables/client.dart';

part 'client_dao.g.dart';

@DriftAccessor(tables: [Clients])
class ClientsDao extends DatabaseAccessor<Database> with _$ClientsDaoMixin {
  ClientsDao(super.database);

  Future<List<Client>> getAll() {
    return clients.all().get();
  }

  Future<int> createOrUpdate(Client client) {
    return clients.insertOnConflictUpdate(client);
  }

  Future<bool> deleteOne(Client client) {
    return clients.deleteOne(client);
  }
}
