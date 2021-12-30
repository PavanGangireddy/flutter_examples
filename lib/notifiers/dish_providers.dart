import 'package:flutter_app_pilot/domain/entities/dish.dart';
import 'package:flutter_app_pilot/services/service_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dishListProvider = FutureProvider.autoDispose<List<Dish>>(
  (ref) async {
    final service = ref.watch(dishServiceProvider);
    final dishList = await service.getPopularDishesList();
    // Once a page was downloaded, preserve its state to avoid re-downloading it again.
    ref.maintainState = false;
    return dishList;
  },
);
