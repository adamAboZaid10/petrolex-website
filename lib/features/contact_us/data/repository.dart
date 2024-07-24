import 'package:either_dart/src/either.dart';

import 'package:petrolex/core/Helpers/errors.dart';
import 'package:petrolex/features/contact_us/data/remote_data_source.dart';

import '../domain/base_repository.dart';

class ContactUsRepository extends BaseContactUsRepository {
  final BaseContactUsRemoteDataSource baseContactUsRemoteDataSource;

  ContactUsRepository(this.baseContactUsRemoteDataSource);

  @override
  Future<Either<Failure, String>> sendInfo() async {
    final result = await baseContactUsRemoteDataSource.sendInfo();
    try {
      return Right(result);
    } on Failure catch (failure) {
      return Left(
        failure,
      );
    }
  }
}
