class CarModels {
  String? id;
  String? brand;
  double? price;
  String? type;
  String? imageUrl;
  bool? isFavorite;
  CarModels({
    this.id,
    this.brand,
    this.price,
    this.type,
    this.imageUrl,
    this.isFavorite,
  });

  CarModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    price = json['price'];
    type = json['type'];
    imageUrl = json['imageUrl'];
    isFavorite = json['isFavorite'];
  }
}
