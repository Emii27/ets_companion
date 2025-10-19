import 'package:drift/drift.dart';

@DataClassName('Client')
class Clients extends Table {
  TextColumn get name => text()();
}
