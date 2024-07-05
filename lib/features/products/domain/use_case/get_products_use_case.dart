import 'package:either_dart/either.dart';
import 'package:flutter_web/features/products/domain/repositroy/base_repository.dart';

import '../../../../core/Helpers/errors.dart';
import '../../data/models/products_model.dart';
class GetProductsUseCase {
  final BaseProductRepository baseProductRepository;

  const GetProductsUseCase(this.baseProductRepository);

  Future<Either<Failure,List<ProductDetails>>>  call() async {
    return await baseProductRepository.getProducts();
  }
}
