import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.image,
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.status,
    required this.isFavourite,
    this.qty
  });

  String image;
  String id;
  bool isFavourite;
  String name;
  String price;
  String description;
  String status;

  int? qty;

  factory ProductModel.fromJson(Map<String, dynamic>json) => ProductModel(
      image: json ["image"],
      id: json ["id"],
      name: json ["name"],
      price: json ["price"],
      description: json ["description"],
      status: json ["status"],
      isFavourite: false,
      qty: json ["qty"],
  );

  Map<String, dynamic> toJson() => {
  "id": id,
  "name": name,
  "image": image,
  "price": price,
  "description":description,
  "status": status,
  "isFavourite":isFavourite,
    "qty":qty,
  };
  @override
  ProductModel copyWith({
    int? qty,
    }) =>
        ProductModel(
            image: image,
            id: id,
            name: name,
            price: price,
            description: description,
            status: status,
            isFavourite: isFavourite,
            qty: qty??this.qty,
      );
}
