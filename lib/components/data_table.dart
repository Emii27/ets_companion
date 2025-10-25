import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  final List<DataColumn> headers;
  final List<DataRow> data;

  const CustomDataTable({super.key, required this.headers, required this.data});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12.0),
      child: DataTable(
        columns: headers,
        rows: data,
        headingTextStyle: textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        headingRowColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => colorScheme.primary.withValues(alpha: 0.33),
        ),
        dataRowColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.1);
          }
          return null;
        }),
      ),
    );
  }
}
