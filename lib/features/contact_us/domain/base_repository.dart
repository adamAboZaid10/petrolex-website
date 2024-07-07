import 'package:either_dart/either.dart';
import 'package:flutter_web/core/Helpers/errors.dart';

abstract class BaseContactUsRepository {
  Future<Either<Failure , String>> sendInfo();
}