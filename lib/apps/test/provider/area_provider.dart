import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/apps/test/repository/area_repo.dart';

final areaNotifyProvider =
    StateNotifierProvider<AreaNotifier, List<Datum>>((ref) {
  return AreaNotifier(billsRepository: BillsRepository());
});

class AreaNotifier extends StateNotifier<List<Datum>> {
  BillsRepository billsRepository;
  WidgetRef? ref;

  AreaNotifier({required this.billsRepository}) : super([]) {
    getAllArea();
  }

  getAllArea() async {
    var response = await billsRepository.getAreaLocation();
    List<Datum> areaData = response.data.map((e) => e).toList();
    state = areaData;
  }
}
