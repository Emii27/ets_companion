import 'package:ets_companion/components/data_table.dart';
import 'package:ets_companion/components/screen_layout.dart';
import 'package:ets_companion/models/client_model.dart';
import 'package:ets_companion/services/client_service.dart';
import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClientScreen extends ConsumerWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenLayout(
      title: "Clients",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: SpacingUtils.space200,
        children: [
          Card(
            child: CustomDataTable(
              headers: _buildHeaders(),
              data: _buildData(ref),
            ),
          ),
          FilledButton.icon(
            onPressed: () => _addClient(context, ref),
            label: Padding(
              padding: const EdgeInsets.all(SpacingUtils.space100),
              child: Text("Add a client"),
            ),
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  List<DataColumn> _buildHeaders() {
    const labelList = ["Name"];
    return labelList.map((label) => DataColumn(label: Text(label))).toList();
  }

  List<DataRow> _buildData(WidgetRef ref) {
    final clientsAsync = ref.watch(clientServiceProvider);
    final clients = clientsAsync.when(
      data: (clients) => clients,
      error: (_, _) => <Client>[],
      loading: () => <Client>[],
    );

    return clients
        .map((client) => DataRow(cells: [DataCell(Text(client.name))]))
        .toList();
  }

  void _addClient(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Create client"),
          content: Text("Here we need to handle the creation of a new client."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                ref
                    .read(clientServiceProvider.notifier)
                    .createOrUpdate(Client(name: "Posped"));

                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("DELETE"),
              onPressed: () {
                ref
                    .read(clientServiceProvider.notifier)
                    .delete(Client(name: "Posped"));

                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
