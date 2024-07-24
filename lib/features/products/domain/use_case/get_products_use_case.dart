import 'package:either_dart/either.dart';
import '../../../../core/Helpers/errors.dart';
import '../../data/models/products_model.dart';
import '../repositroy/base_repository.dart';
class GetProductsUseCase {
  final BaseProductRepository baseProductRepository;

  const GetProductsUseCase(this.baseProductRepository);

  Future<Either<Failure,List<ProductDetails>>>  call() async {
    return await baseProductRepository.getProducts();
  }
}
