// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'cc438222667cc92db924c6b987dc5556a579bee8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Counter extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int value;

  FutureOr<int> build(
    int value,
  );
}

/// See also [Counter].
@ProviderFor(Counter)
const counterProvider = CounterFamily();

/// See also [Counter].
class CounterFamily extends Family<AsyncValue<int>> {
  /// See also [Counter].
  const CounterFamily();

  /// See also [Counter].
  CounterProvider call(
    int value,
  ) {
    return CounterProvider(
      value,
    );
  }

  @override
  CounterProvider getProviderOverride(
    covariant CounterProvider provider,
  ) {
    return call(
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterProvider';
}

/// See also [Counter].
class CounterProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Counter, int> {
  /// See also [Counter].
  CounterProvider(
    int value,
  ) : this._internal(
          () => Counter()..value = value,
          from: counterProvider,
          name: r'counterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterHash,
          dependencies: CounterFamily._dependencies,
          allTransitiveDependencies: CounterFamily._allTransitiveDependencies,
          value: value,
        );

  CounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final int value;

  @override
  FutureOr<int> runNotifierBuild(
    covariant Counter notifier,
  ) {
    return notifier.build(
      value,
    );
  }

  @override
  Override overrideWith(Counter Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterProvider._internal(
        () => create()..value = value,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Counter, int> createElement() {
    return _CounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `value` of this provider.
  int get value;
}

class _CounterProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Counter, int>
    with CounterRef {
  _CounterProviderElement(super.provider);

  @override
  int get value => (origin as CounterProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
