import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_create_screen_model.freezed.dart';

@freezed
abstract class ClientCreateScreenModel with _$ClientCreateScreenModel {
  const ClientCreateScreenModel._();

  const factory ClientCreateScreenModel({
    required String nameValue,
    @Default(false) bool isSubmitted,
  }) = _ClientModelScreenModel;

  bool get isValid => nameValue.isNotEmpty;
  String? get errorString =>
      !isValid && isSubmitted ? "The field can't be empty" : null;
}
