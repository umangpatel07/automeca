import 'dart:convert';

ServiceModel productModelFromJson(String str) =>
    ServiceModel.fromJson(json.decode(str));

String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

class ServiceModel {
  ServiceModel({
    required this.image,
    required this.name
  });


  String image;
  String name;


  factory ServiceModel.fromJson(Map<String, dynamic>json) => ServiceModel(
    image: json ["image"],
      name: json ["name"]
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "name": name
  };
  @override
  ServiceModel copyWith({
    int? qty,
  }) =>
      ServiceModel(
        image: image,
          name: name

      );
}
