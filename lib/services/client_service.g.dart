// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClientService)
const clientServiceProvider = ClientServiceProvider._();

final class ClientServiceProvider
    extends $StreamNotifierProvider<ClientService, List<ClientModel>> {
  const ClientServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientServiceHash();

  @$internal
  @override
  ClientService create() => ClientService();
}

String _$clientServiceHash() => r'a25b8e79ed764929e83261a62d3c58d3755a13b5';

abstract class _$ClientService extends $StreamNotifier<List<ClientModel>> {
  Stream<List<ClientModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ClientModel>>, List<ClientModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ClientModel>>, List<ClientModel>>,
              AsyncValue<List<ClientModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
