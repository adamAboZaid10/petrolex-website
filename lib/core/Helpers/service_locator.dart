import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

import '../../features/products/data/data_source/remote_data_source_use_case.dart';
import '../../features/products/data/repository/products_repository.dart';
import '../../features/products/domain/repositroy/base_repository.dart';
import '../../features/products/domain/use_case/get_one_products_use_case.dart';
import '../../features/products/domain/use_case/get_products_use_case.dart';
import '../../features/products/presentation/controller/products_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static init() {

    // Use cases
    sl.registerLazySingleton(() => GetProductsUseCase(sl()));
    sl.registerLazySingleton(() => GetOneProductsUseCase(sl()));

    // Repository
    sl.registerLazySingleton<BaseProductRepository>(() => ProductsRepository(sl()));

    // Data sources
    sl.registerLazySingleton<BaseProductsRemoteDataSource>(() => ProductsRemoteDataSource(FirebaseFirestore.instance));

    //bloc
    sl.registerFactory(() => ProductsBloc(sl(),sl()));
  }
}