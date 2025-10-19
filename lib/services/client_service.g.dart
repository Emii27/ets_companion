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
    extends $AsyncNotifierProvider<ClientService, List<Client>> {
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

String _$clientServiceHash() => r'2c764b4a53622a959ff23a8dd7d376a1a7819bad';

abstract class _$ClientService extends $AsyncNotifier<List<Client>> {
  FutureOr<List<Client>> build();
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
