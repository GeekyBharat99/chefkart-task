import 'package:chefkart/api/api_services.dart';
import 'package:chefkart/models/dishes.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dishesProvider =
    StateNotifierProvider.autoDispose<DishesNotifier, Dishes>((ref) {
  return DishesNotifier(ref);
});

class DishesNotifier extends StateNotifier<Dishes> {
  DishesNotifier(AutoDisposeStateNotifierProviderRef incomingRef)
      : super(const Dishes()) {
    ref = incomingRef;
  }

  late AutoDisposeStateNotifierProviderRef ref;

  Future<void> callInitialApi() async {
    Dishes? result;
    loading(value: true);
    result = await ApiService()
        .getDishes()
        .then((value) => value)
        .catchError((onError) {
      debugPrint('error while calling callInitialApi  $onError');
      customToast(text: "Something went Wrong.", isLong: true);
      loading(value: false);
      return null;
    });

    if (result == null) {
      customToast(text: "Something went Wrong.", isLong: true);
      loading(value: false);
      return;
    }

    state = result;
    loading(value: false);
  }
}
