import 'package:chefkart/api/api_services.dart';
import 'package:chefkart/models/dish_details.dart';
import 'package:chefkart/utils/helper_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final disheDetailsProvider =
    StateNotifierProvider.autoDispose<DishDetailsNotifier, DishDetails>((ref) {
  return DishDetailsNotifier(ref);
});

class DishDetailsNotifier extends StateNotifier<DishDetails> {
  DishDetailsNotifier(AutoDisposeStateNotifierProviderRef incomingRef)
      : super(const DishDetails()) {
    ref = incomingRef;
  }

  late AutoDisposeStateNotifierProviderRef ref;

  Future<void> callDishDetailsInitialApi({required int id}) async {
    DishDetails? result;
    loading(value: true);
    result = await ApiService()
        .getDishDetails(id: id)
        .then((value) => value)
        .catchError((onError) {
      debugPrint('error while calling callDishDetailsInitialApi  $onError');
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
