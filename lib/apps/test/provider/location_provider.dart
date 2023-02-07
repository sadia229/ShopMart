import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/apps/test/repository/area_repo.dart';

final locationNotiProvider =
    StateNotifierProvider<LocationNotifier, List<AreaLocation>>(
  (ref) => LocationNotifier(BillsRepository()),
);

class LocationNotifier extends StateNotifier<List<AreaLocation>> {
  final BillsRepository _billsRepository;

  LocationNotifier(this._billsRepository) : super([]) {
    getLocations();
  }

  getLocations() async {
    var response = await _billsRepository.getAreaLocation();
    List<AreaLocation> locations = [];
    List<Datum> areaData = response.data.map((e) => e).toList();
    for (var i = 0; i < areaData.length; i++) {
      for (var j in areaData[i].areasName.areaLocation) {
        locations.add(j);
      }
    }
    state = locations;
    print("locations${locations.length}");
  }
}

final updateLocationProvider = StateNotifierProvider.autoDispose<
    UpdateLocationNotifier, List<AreaLocation>>((ref) {
  return UpdateLocationNotifier();
});

class UpdateLocationNotifier extends StateNotifier<List<AreaLocation>> {
  UpdateLocationNotifier() : super([]);

  setNewLocations(AreaLocation areaLocation) async {
    state = [...state, areaLocation];
    print("locations${state.length}");
  }

  void clearLocation() {
    state = [];
  }
}

AreaLocation? areaLocation;

final areaLocationProvider = StateProvider<AreaLocation?>((_) {
  return null;
});
