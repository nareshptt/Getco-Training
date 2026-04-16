class Usersdata {
  String? name;
  int? age;

  Usersdata(this.name, this.age);
}

class MobileData {
  final String name;
  final String brand;
  final int price;
  final String ram;
  final String storage;

  MobileData({
    required this.name,
    required this.brand,
    required this.price,
    required this.ram,
    required this.storage,
  });
}
