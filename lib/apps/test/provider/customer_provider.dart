import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/apps/test/repository/area_repo.dart';

final customernNotiProvider =
    StateNotifierProvider<CustomerNotifier, List<Customer>>((ref) {
  return CustomerNotifier(BillsRepository());
});

class CustomerNotifier extends StateNotifier<List<Customer>> {
  final BillsRepository billsRepository;

  CustomerNotifier(this.billsRepository) : super([]) {
    getCustomer();
  }

  getCustomer() async {
    var response = await billsRepository.getAreaLocation();
    List<Customer> customers = [];
    List<Datum> areaData = response.data.map((e) => e).toList();
    for (var i = 0; i < areaData.length; i++) {
      for (var j = 0; j < areaData[i].areasName.areaLocation.length; j++) {
        for (var m in areaData[i].areasName.areaLocation[j].customer) {
          customers.add(m);
        }
      }
    }
    state = customers;
    print("customer${customers.length}");
  }
}

final updateCustomerProvider =
    StateNotifierProvider.autoDispose<UpdateCustomerNotifier, List<Customer>>(
        (ref) {
  return UpdateCustomerNotifier();
});

class UpdateCustomerNotifier extends StateNotifier<List<Customer>> {
  UpdateCustomerNotifier() : super([]);

  setNewCostomer(Customer customer) async {
    state = [...state, customer];
    print("locations${state.length}");
  }

  void clearCutomerList() {
    state = [];
  }
}

Customer? customer;

final customerStateProvider = StateProvider<Customer?>((_) {
  return null;
});
