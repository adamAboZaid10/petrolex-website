import 'package:either_dart/either.dart';

import '../../../../core/Helpers/errors.dart';
import '../../data/models/products_model.dart';

abstract class BaseProductRepository{
  Future<Either<Failure,List<ProductDetails>>> getProducts();
}