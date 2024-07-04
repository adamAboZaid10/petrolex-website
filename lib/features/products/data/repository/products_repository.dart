import 'package:flutter_web/features/products/data/models/products_models.dart';

import '../../domain/repositroy/base_repository.dart';
import '../data_source/remote_data_source_use_case.dart';

class ProductsRepository extends BaseProductRepository {
  final BaseProductsRemoteDataSource baseProductsRemoteDataSource;

  ProductsRepository(this.baseProductsRemoteDataSource);

  @override
  Future<List<ProductModel>> getProducts() async {
    return await baseProductsRemoteDataSource.getProducts();
  }
}
