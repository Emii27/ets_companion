import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:ets_companion/database/daos/client_dao.dart';
import 'package:ets_companion/database/tables/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database.g.dart';

@riverpod
Database database(Ref ref) => Database();

@DriftDatabase(tables: [Clients], daos: [ClientsDao])
class Database extends _$Database {
  Database([QueryExecutor? executor]) : super(executor ?? _openDatabase());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (_) async {
        final migrator = createMigrator();
        for (var table in allTables) {
          await migrator.deleteTable(table.actualTableName);
          await migrator.createTable(table);
        }
      },
    );
  }

  static QueryExecutor _openDatabase() {
    return driftDatabase(name: 'database', native: const DriftNativeOptions());
  }
}
