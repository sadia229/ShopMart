import 'dart:convert';

AreaLocationModel areaLocationModelFromJson(String? str) =>
    AreaLocationModel.fromJson(json.decode(str!));

String? areaLocationModelToJson(AreaLocationModel data) =>
    json.encode(data.toJson());

class AreaLocationModel {
  AreaLocationModel({
    this.code,
    this.status,
    this.message,
    required this.data,
  });

  int? code;
  bool? status;
  String? message;
  List<Datum> data;

  factory AreaLocationModel.fromJson(Map<String?, dynamic> json) =>
      AreaLocationModel(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String?, dynamic> toJson() => {
    "code": code,
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.spId,
    this.emId,
    this.areaId,
    required this.createdAt,
    required this.updatedAt,
    required this.areasName,
  });

  int? id;
  String? spId;
  String? emId;
  String? areaId;
  DateTime createdAt;
  DateTime updatedAt;
  AreasName areasName;

  factory Datum.fromJson(Map<String?, dynamic> json) => Datum(
    id: json["id"],
    spId: json["sp_id"],
    emId: json["em_id"],
    areaId: json["area_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    areasName: AreasName.fromJson(json["areas_name"]),
  );

  Map<String?, dynamic> toJson() => {
    "id": id,
    "sp_id": spId,
    "em_id": emId,
    "area_id": areaId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "areas_name": areasName.toJson(),
  };
}

class AreasName {
  AreasName({
    this.id,
    this.spId,
    this.areaId,
    this.areaName,
    this.areaDescription,
    this.areaCode,
    this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.areaLocation,
  });

  int? id;
  String? spId;
  String? areaId;
  String? areaName;
  String? areaDescription;
  String? areaCode;
  int? status;
  DateTime createdAt;
  DateTime updatedAt;
  List<AreaLocation> areaLocation;

  factory AreasName.fromJson(Map<String?, dynamic> json) => AreasName(
    id: json["id"],
    spId: json["sp_id"],
    areaId: json["area_id"],
    areaName: json["area_name"],
    areaDescription: json["area_description"],
    areaCode: json["area_code"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    areaLocation: List<AreaLocation>.from(
        json["area_location"].map((x) => AreaLocation.fromJson(x))),
  );

  Map<String?, dynamic> toJson() => {
    "id": id,
    "sp_id": spId,
    "area_id": areaId,
    "area_name": areaName,
    "area_description": areaDescription,
    "area_code": areaCode,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "area_location":
    List<dynamic>.from(areaLocation.map((x) => x.toJson())),
  };
}

class AreaLocation {
  AreaLocation({
    this.id,
    this.spId,
    this.areaLocationId,
    this.area,
    this.areaLocationName,
    this.description,
    this.areaLocationCode,
    this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.customer,
  });

  int? id;
  String? spId;
  String? areaLocationId;
  String? area;
  String? areaLocationName;
  String? description;
  String? areaLocationCode;
  int? status;
  DateTime createdAt;
  DateTime updatedAt;
  List<Customer> customer;

  factory AreaLocation.fromJson(Map<String?, dynamic> json) => AreaLocation(
    id: json["id"],
    spId: json["sp_id"],
    areaLocationId: json["area_location_id"],
    area: json["area"],
    areaLocationName: json["area_location_name"],
    description: json["description"],
    areaLocationCode: json["area_location_code"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    customer: List<Customer>.from(
        json["customer"].map((x) => Customer.fromJson(x))),
  );

  Map<String?, dynamic> toJson() => {
    "id": id,
    "sp_id": spId,
    "area_location_id": areaLocationId,
    "area": area,
    "area_location_name": areaLocationName,
    "description": description,
    "area_location_code": areaLocationCode,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "customer": List<dynamic>.from(customer.map((x) => x.toJson())),
  };
}

class Customer {
  Customer({
    this.id,
    this.spId,
    this.customerId,
    this.customerName,
    this.cellNumber,
    this.password,
    this.email,
    this.profession,
    this.dob,
    this.nid,
    this.address,
    this.packageId,
    this.areaId,
    this.areaLocId,
    this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.bill,
  });

  int? id;
  String? spId;
  String? customerId;
  String? customerName;
  String? cellNumber;
  String? password;
  dynamic email;
  dynamic profession;
  dynamic dob;
  dynamic nid;
  String? address;
  String? packageId;
  String? areaId;
  String? areaLocId;
  int? status;
  DateTime createdAt;
  DateTime updatedAt;
  List<Bill> bill;

  factory Customer.fromJson(Map<String?, dynamic> json) => Customer(
    id: json["id"],
    spId: json["sp_id"],
    customerId: json["customer_id"],
    customerName: json["customer_name"],
    cellNumber: json["cell_number"],
    password: json["password"],
    email: json["email"],
    profession: json["profession"],
    dob: json["dob"],
    nid: json["nid"],
    address: json["address"],
    packageId: json["package_id"],
    areaId: json["area_id"],
    areaLocId: json["area_loc_id"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    bill: List<Bill>.from(json["bill"].map((x) => Bill.fromJson(x))),
  );

  Map<String?, dynamic> toJson() => {
    "id": id,
    "sp_id": spId,
    "customer_id": customerId,
    "customer_name": customerName,
    "cell_number": cellNumber,
    "password": password,
    "email": email,
    "profession": profession,
    "dob": dob,
    "nid": nid,
    "address": address,
    "package_id": packageId,
    "area_id": areaId,
    "area_loc_id": areaLocId,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "bill": List<dynamic>.from(bill.map((x) => x.toJson())),
  };
}

class Bill {
  Bill({
    this.id,
    this.billId,
    this.spId,
    this.emId,
    this.customerId,
    this.month,
    this.year,
    this.serviceCharge,
    this.paidAmount,
    required this.paymentDate,
    this.paymentStatus,
    required this.createdAt,
    required this.updatedAt,
  });

  int? id;
  String? billId;
  String? spId;
  String? emId;
  String? customerId;
  String? month;
  String? year;
  int? serviceCharge;
  int? paidAmount;
  DateTime? paymentDate;
  int? paymentStatus;
  DateTime createdAt;
  DateTime updatedAt;

  factory Bill.fromJson(Map<String?, dynamic> json) => Bill(
    id: json["id"],
    billId: json["bill_id"],
    spId: json["sp_id"],
    emId: json["em_id"],
    customerId: json["customer_id"],
    month: json["month"],
    year: json["year"],
    serviceCharge: json["service_charge"],
    paidAmount: json["paid_amount"],
    paymentDate: DateTime.parse(json["payment_date"] ?? '2022-02-02'),
    paymentStatus: json["payment_status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String?, dynamic> toJson() => {
    "id": id,
    "bill_id": billId,
    "sp_id": spId,
    "em_id": emId,
    "customer_id": customerId,
    "month": month,
    "year": year,
    "service_charge": serviceCharge,
    "paid_amount": paidAmount,
    "payment_date":
    "${paymentDate!.year.toString}-${paymentDate!.month.toString}-${paymentDate!.day.toString}",
    "payment_status": paymentStatus,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
