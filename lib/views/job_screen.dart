import 'package:ets_companion/components/data_table.dart';
import 'package:ets_companion/components/screen_layout.dart';
import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: "Jobs",
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
            onPressed: () => _addJob(context),
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
    const labelList = [
      "Client",
      "Recipient",
      "Pick up location",
      "Delivery location",
      "Due date",
      "Cargo type",
      "Weight",
    ];
    return labelList.map((label) => DataColumn(label: Text(label))).toList();
  }

  List<DataRow> _buildData() {
    const itemList = [
      DataRow(
        cells: [
          DataCell(Text("Posped")),
          DataCell(Text("Transinet")),
          DataCell(Text("Metz (FR)")),
          DataCell(Text("Brussels (BE)")),
          DataCell(Text("19:54 06/10/2025")),
          DataCell(Text("Rooflight")),
          DataCell(Text("11873")),
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text("Transinet")),
          DataCell(Text("EuroGoodies")),
          DataCell(Text("Brussels (BE)")),
          DataCell(Text("Reims (FR)")),
          DataCell(Text("08:43 07/10/2025")),
          DataCell(Text("Pears")),
          DataCell(Text("15407")),
        ],
      ),
    ];

    return itemList;
  }

  void _addJob(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Create job"),
          content: Text("Here we need to handle the creation of a new job."),
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
