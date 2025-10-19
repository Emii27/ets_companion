import 'package:ets_companion/database/database.dart' as db;
import 'package:flutter/material.dart';

@immutable
class Client {
  final String name;

  const Client({required this.name});

  factory Client.fromClientData(db.Client client) {
    return Client(name: client.name);
  }

  db.Client toClientData() {
    return db.Client(name: name);
  }
}
