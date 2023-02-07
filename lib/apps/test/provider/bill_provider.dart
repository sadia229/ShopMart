import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/apps/test/repository/area_repo.dart';

final billnNotiProvider =
    StateNotifierProvider<CustomerNotifier, List<Bill>>((ref) {
  return CustomerNotifier(BillsRepository());
});

class CustomerNotifier extends StateNotifier<List<Bill>> {
  final BillsRepository billsRepository;

  CustomerNotifier(this.billsRepository) : super([]) {
    getCustomer();
  }

  getCustomer() async {
    var response = await billsRepository.getAreaLocation();
    List<Bill> bills = [];
    List<Datum> areaData = response.data.map((e) => e).toList();
    for (var i = 0; i < areaData.length; i++) {
      for (var j = 0; j < areaData[i].areasName.areaLocation.length; j++) {
        for (var k = 0;
            k < areaData[i].areasName.areaLocation[j].customer.length;
            k++) {
          for (var m in areaData[i].areasName.areaLocation[j].customer[k].bill) {
            bills.add(m);
          }
        }
      }
    }
    state = bills;
    print("billd${bills.length}");
  }
}

final updateBillsProvider =
    StateNotifierProvider.autoDispose<UpdateBillNotifier, List<Bill>>((ref) {
  return UpdateBillNotifier();
});

class UpdateBillNotifier extends StateNotifier<List<Bill>> {
  UpdateBillNotifier() : super([]);

  setNewCostomer(Bill bill) async {
    state = [...state, bill];
    print("locations${state.length}");
  }

  void clearBillList() {
    state = [];
  }
}

Bill? bill;

final billStateProvider = StateProvider<Bill?>((_) {
  return null;
});
