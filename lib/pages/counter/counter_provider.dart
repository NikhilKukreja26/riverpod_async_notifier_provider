import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

// class Counter extends AsyncNotifier<int> {
//   @override
//   FutureOr<int> build() async {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     await waitSecond();

//     return 0;
//   }

//   Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

//   Future<void> increment() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       // if (state.value == 2) {
//       //   throw 'Fail to increment';
//       // }
//       return state.value! + 1;
//     });

//     // try {
//     //   await waitSecond();

//     //   throw 'Fail to increment';

//     //   // state = AsyncData(state.value! + 1);
//     // } catch (error, stackTrace) {
//     //   state = AsyncError(error, stackTrace);
//     // }
//   }

//   Future<void> decrement() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       return state.value! - 1;
//     });

//     // try {
//     //   await waitSecond();

//     //   state = AsyncData(state.value! - 1);
//     // } catch (error, stackTrace) {
//     //   state = AsyncError(error, stackTrace);
//     // }
//   }
// }

// final counterProvider = AsyncNotifierProvider<Counter, int>(Counter.new);

// AutoDispose
// class Counter extends AutoDisposeAsyncNotifier<int> {
//   @override
//   FutureOr<int> build() async {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     await waitSecond();

//     return 0;
//   }

//   Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

//   Future<void> increment() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       // if (state.value == 2) {
//       //   throw 'Fail to increment';
//       // }
//       return state.value! + 1;
//     });

//   }

//   Future<void> decrement() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       return state.value! - 1;
//     });

//   }
// }

// final counterProvider =
//     AsyncNotifierProvider.autoDispose<Counter, int>(Counter.new);

// Family

// class Counter extends FamilyAsyncNotifier<int, int> {
//   @override
//   FutureOr<int> build(int arg) async {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     await waitSecond();

//     return arg;
//   }

//   Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

//   Future<void> increment() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       // if (state.value == 2) {
//       //   throw 'Fail to increment';
//       // }
//       return state.value! + 1;
//     });
//   }

//   Future<void> decrement() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       return state.value! - 1;
//     });
//   }
// }

// final counterProvider =
//     AsyncNotifierProvider.family<Counter, int, int>(Counter.new);

// AutoDisposeFamily

// class Counter extends AutoDisposeFamilyAsyncNotifier<int, int> {
//   @override
//   FutureOr<int> build(int arg) async {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     await waitSecond();

//     return arg;
//   }

//   Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

//   Future<void> increment() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       // if (state.value == 2) {
//       //   throw 'Fail to increment';
//       // }
//       return state.value! + 1;
//     });
//   }

//   Future<void> decrement() async {
//     state = const AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       return state.value! - 1;
//     });
//   }
// }

// final counterProvider =
//     AsyncNotifierProvider.autoDispose.family<Counter, int, int>(Counter.new);

// Using riverpod class
@riverpod
class Counter extends _$Counter {
  @override
  FutureOr<int> build(int value) async {
    ref.onDispose(() {
      print('[counterProvider] disposed');
    });

    await waitSecond();
    return value;
  }

  Future<void> waitSecond() => Future.delayed(const Duration(seconds: 1));

  Future<void> increment() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await waitSecond();
      // if (state.value == 2) {
      //   throw 'Fail to increment';
      // }
      return state.value! + 1;
    });
  }

  Future<void> decrement() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await waitSecond();
      return state.value! - 1;
    });
  }
}
