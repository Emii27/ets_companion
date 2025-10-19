import 'package:drift/drift.dart';
import 'package:ets_companion/database/database.dart';
import 'package:ets_companion/database/tables/client.dart';

part 'client_dao.g.dart';

@DriftAccessor(tables: [Clients])
class ClientsDao extends DatabaseAccessor<Database> with _$ClientsDaoMixin {
  ClientsDao(super.database);

  Stream<List<Client>> getAll() {
    return clients.all().watch();
  }

  Future<int> createOrUpdate(Client client) {
    return clients.insertOne(client);
  }

  Future<bool> deleteOne(Client client) {
    return clients.deleteOne(client);
  }
}
