import 'package:either_dart/either.dart';
import 'package:petrolex/core/Helpers/errors.dart';

abstract class BaseContactUsRepository {
  Future<Either<Failure , String>> sendInfo();
}