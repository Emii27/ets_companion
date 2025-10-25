import 'package:ets_companion/models/client_create_screen_model.dart';
import 'package:ets_companion/models/client_model.dart';
import 'package:ets_companion/services/client_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_create_screen_controller.g.dart';

@riverpod
class ClientCreateScreenController extends _$ClientCreateScreenController {
  @override
  ClientCreateScreenModel build() {
    return ClientCreateScreenModel(nameValue: "");
  }

  void update(String value) {
    state = state.copyWith(nameValue: value);
  }

  void submit() {
    state = state.copyWith(isSubmitted: true);

    if (state.isValid) {
      final client = ClientModel(name: state.nameValue.trim());
      ref.read(clientServiceProvider.notifier).createOrUpdate(client);
    }
  }
}
