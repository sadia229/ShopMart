import 'package:flutter_riverpod/flutter_riverpod.dart';

final favouriteProvider =
    StateNotifierProvider.family<FavouriteNotifier, bool, int>((ref, arg) {
  return FavouriteNotifier();
});

class FavouriteNotifier extends StateNotifier<bool> {
  FavouriteNotifier() : super(false);

  void addFavourite() {
    state = !state;
  }
}
