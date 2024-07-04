import '../entities/products_entity.dart';

abstract class BaseProductRepository{
  Future<List<ProductsEntity>> getProducts();
}