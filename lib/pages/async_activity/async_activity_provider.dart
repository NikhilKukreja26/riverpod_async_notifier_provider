import 'package:async_notifier_provider/models/activity.dart';
import 'package:async_notifier_provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'async_activity_provider.g.dart';

@riverpod
class AsyncActivity extends _$AsyncActivity {
  int _errorCounter = 0;
  @override
  FutureOr<Activity> build() async {
    ref.onDispose(() {
      print('[asyncActivityProvider] disposed');
    });
    return getActivity(activityType: activityTypes[0]);
  }

  Future<Activity> getActivity({required String activityType}) async {
    if (_errorCounter++ % 2 != 1) {
      await Future.delayed(const Duration(seconds: 1));
      throw 'Fail to fetch activity';
    }

    final response = await ref.watch(dioProvider).get('?type=$activityType');

    final List activityList = response.data;

    return Activity.fromJson(activityList.first);
  }

  Future<void> fetchActivity({required String activityType}) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      return getActivity(activityType: activityType);
    });
  }
}
