import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

import '../../features/contact_us/data/remote_data_source.dart';
import '../../features/contact_us/data/repository.dart';
import '../../features/contact_us/domain/base_repository.dart';
import '../../features/contact_us/domain/use_cases/send_info_use_case.dart';
import '../../features/contact_us/presentation/controller/contact_us_bloc.dart';
import '../../features/products/data/data_source/remote_data_source_use_case.dart';
import '../../features/products/data/repository/products_repository.dart';
import '../../features/products/domain/repositroy/base_repository.dart';
import '../../features/products/domain/use_case/get_products_use_case.dart';
import '../../features/products/presentation/controller/products_bloc.dart';


final sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    // Firebase instance
    sl.registerLazySingleton(() => FirebaseFirestore.instance);

    // Data sources
    sl.registerLazySingleton<BaseProductsRemoteDataSource>(() => ProductsRemoteDataSource(sl()));
    sl.registerLazySingleton<BaseContactUsRemoteDataSource>(() => ContactUsRemoteDataSource(sl()));

    // Repository
    sl.registerLazySingleton<BaseProductRepository>(() => ProductsRepository(sl()));
    sl.registerLazySingleton<BaseContactUsRepository>(() => ContactUsRepository(sl()));

    // Use cases
    sl.registerLazySingleton(() => GetProductsUseCase(sl()));
    sl.registerLazySingleton(() => SendInformationUserUseCase(sl()));

    // Bloc
    sl.registerFactory(() => ProductsBloc(sl()));
    sl.registerFactory(() => ContactUsBloc(sl()));
  }
}
