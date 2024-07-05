import 'package:either_dart/either.dart';

import '../../../../core/Helpers/errors.dart';
import '../../data/models/products_model.dart';
import '../repositroy/base_repository.dart';

class GetOneProductsUseCase {
final BaseProductRepository baseProductRepository;
  GetOneProductsUseCase( this.baseProductRepository);
  Future<Either<Failure, ProductDetails>> call(String id) async {
    return await baseProductRepository.getProductDetails(id);
  }
}