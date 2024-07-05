import 'package:either_dart/either.dart';

import '../../../../core/Helpers/errors.dart';
import '../../domain/repositroy/base_repository.dart';
import '../data_source/remote_data_source_use_case.dart';
import '../models/products_model.dart';

class ProductsRepository extends BaseProductRepository {
  final BaseProductsRemoteDataSource baseProductsRemoteDataSource;

  ProductsRepository(this.baseProductsRemoteDataSource);

  @override
  Future<Either<Failure, List<ProductDetails>>> getProducts() async {
    final result = await baseProductsRemoteDataSource.getProducts();
    try {
      return Right(result);
    } on Failure catch (failure) {
      return Left(
        failure,
      );
    }
  }

  @override
  Future<Either<Failure, ProductDetails>> getProductDetails(String id) async{
    final result = await baseProductsRemoteDataSource.getProductDetails(id);
    try {
      return Right(result);
    } on Failure catch (failure) {
      return Left(
        failure,
      );
    }
  }
}
