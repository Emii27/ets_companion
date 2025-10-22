import 'package:drift/drift.dart';
import 'package:ets_companion/database/database.dart';
import 'package:ets_companion/database/tables/client.dart';
import 'package:ets_companion/models/client_model.dart';

part 'client_dao.g.dart';

@DriftAccessor(tables: [Clients])
class ClientsDao extends DatabaseAccessor<Database> with _$ClientsDaoMixin {
  ClientsDao(super.database);

  Stream<List<Client>> getAll() {
    return clients.all().watch();
  }

  Future<int> createOrUpdate(ClientModel client) {
    final clientCompanion = ClientsCompanion(
      id: Value.absentIfNull(client.id),
      name: Value(client.name),
    );

    return clients.insertOnConflictUpdate(clientCompanion);
  }

  Future<int> deleteOne(int id) {
    return clients.deleteWhere((client) => client.id.equals(id));
  }
}
