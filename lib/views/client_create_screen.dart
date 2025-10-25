import 'package:ets_companion/components/screen_layout.dart';
import 'package:ets_companion/controllers/client_create_screen_controller.dart';
import 'package:ets_companion/utils/spacing_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ClientCreateScreen extends ConsumerWidget {
  const ClientCreateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clientCreateScreenControllerProvider);
    final notifier = ref.read(clientCreateScreenControllerProvider.notifier);

    return ScreenLayout(
      title: "Create client",
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(SpacingUtils.space300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: SpacingUtils.space200,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Client name',
                      border: OutlineInputBorder(),
                      errorText: state.errorString,
                    ),
                    onChanged: (value) => notifier.update(value),
                  ),
                  FilledButton(
                    onPressed: () {
                      notifier.submit();
                      context.pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(SpacingUtils.space100),
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
