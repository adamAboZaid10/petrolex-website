import '../../domain/entities/products_entity.dart';

class ProductModel extends ProductsEntity {
  final int? id;
  final String? title;
  final String? description;
  final String? image;

  const ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  }) : super(
          idProduct: id,
          title: title,
          description: description,
          image: image,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['name'],
      description: json['description'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': title,
      'description': description,
      'image': image,
    };
  }
}
