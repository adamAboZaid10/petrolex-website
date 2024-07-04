import 'package:equatable/equatable.dart';

class ProductsEntity extends Equatable {
  final int? idProduct;
  final String? title;
  final String? description;
  final String? image;

  const ProductsEntity({
    this.idProduct,
    this.title,
    this.description,
    this.image,
  });

  @override
  List<Object?> get props => [
    idProduct,
        title,
        description,
        image,
      ];
}
