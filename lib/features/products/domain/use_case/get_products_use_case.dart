import 'package:flutter_web/features/products/domain/repositroy/base_repository.dart';

import '../entities/products_entity.dart';

class GetProductsUseCase {
  final BaseProductRepository baseProductRepository;

  const GetProductsUseCase(this.baseProductRepository);

  Future<List<ProductsEntity>> call() async {
    return await baseProductRepository.getProducts();
  }
}
