import 'package:drift/drift.dart';

@DataClassName('Client')
class Clients extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
