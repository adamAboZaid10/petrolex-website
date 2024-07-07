import 'package:either_dart/either.dart';

import '../../../../core/Helpers/errors.dart';
import '../base_repository.dart';

class SendInformationUserUseCase {
  final BaseContactUsRepository baseContactUsRepository;

  SendInformationUserUseCase( this.baseContactUsRepository);
  Future<Either<Failure, String>> call() async {
    return await baseContactUsRepository.sendInfo();
  }
}