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
    extends $StreamNotifierProvider<ClientService, List<Client>> {
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

String _$clientServiceHash() => r'3e2bade81b249d5a9c97883bde674c6b4ddb2022';

abstract class _$ClientService extends $StreamNotifier<List<Client>> {
  Stream<List<Client>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Client>>, List<Client>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Client>>, List<Client>>,
              AsyncValue<List<Client>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
