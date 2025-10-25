// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_create_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClientCreateScreenController)
const clientCreateScreenControllerProvider =
    ClientCreateScreenControllerProvider._();

final class ClientCreateScreenControllerProvider
    extends
        $NotifierProvider<
          ClientCreateScreenController,
          ClientCreateScreenModel
        > {
  const ClientCreateScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientCreateScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientCreateScreenControllerHash();

  @$internal
  @override
  ClientCreateScreenController create() => ClientCreateScreenController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClientCreateScreenModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClientCreateScreenModel>(value),
    );
  }
}

String _$clientCreateScreenControllerHash() =>
    r'40aabc6df2cfcbaeab3d209e9aa880de2f8194f5';

abstract class _$ClientCreateScreenController
    extends $Notifier<ClientCreateScreenModel> {
  ClientCreateScreenModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<ClientCreateScreenModel, ClientCreateScreenModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ClientCreateScreenModel, ClientCreateScreenModel>,
              ClientCreateScreenModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
