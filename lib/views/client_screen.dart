import 'package:ets_companion/components/data_table.dart';
import 'package:ets_companion/components/screen_layout.dart';
import 'package:ets_companion/models/client_model.dart';
import 'package:ets_companion/services/client_service.dart';
import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: () => context.go('/clients/create'),
            // onPressed: () => _addClient(context, ref),
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
    return labelList
        .map(
          (label) =>
              DataColumn(label: Text(label, overflow: TextOverflow.ellipsis)),
        )
        .toList();
  }

  List<DataRow> _buildData(WidgetRef ref) {
    final clientsAsync = ref.watch(clientServiceProvider);
    final clients = clientsAsync.when(
      data: (clients) => clients,
      error: (_, _) => <ClientModel>[],
      loading: () => <ClientModel>[],
    );

    return clients
        .map((client) => DataRow(cells: [DataCell(Text(client.name))]))
        .toList();
  }
}
