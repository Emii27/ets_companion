import 'package:ets_companion/components/data_table.dart';
import 'package:ets_companion/components/screen_layout.dart';
import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: "Clients",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: SpacingUtils.space200,
        children: [
          Card(
            child: CustomDataTable(
              headers: _buildHeaders(),
              data: _buildData(),
            ),
          ),
          FilledButton.icon(
            onPressed: () => _addClient(context),
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

  List<DataRow> _buildData() {
    const nameList = ["Posped", "Transinet", "EuroGoodies", "Wilnet Transport"];

    return nameList
        .map((name) => DataRow(cells: [DataCell(Text(name), onTap: () {})]))
        .toList();
  }

  void _addClient(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Create client"),
          content: Text("Here we need to handle the creation of a new client."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
