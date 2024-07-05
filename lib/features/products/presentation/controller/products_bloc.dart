import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/Helpers/enum_state.dart';
import '../../data/models/products_model.dart';
import '../../domain/use_case/get_one_products_use_case.dart';
import '../../domain/use_case/get_products_use_case.dart';

part 'products_event.dart';

part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUseCase getProductsUseCase;
  final GetOneProductsUseCase getOneProductsUseCase;

  ProductsBloc(this.getProductsUseCase,this.getOneProductsUseCase) : super(ProductsState.init()) {
    on<GetProductsEvent>(getProducts);
    on<GetProductDetailsEvent>(getProductDetails);
  }

  Future<void> getProducts(
      GetProductsEvent event, Emitter<ProductsState> emit) async {
    emit(
      state.copyWith(
        getProductsStatus: ApiStatus.loading,
      ),
    );
    final result = await getProductsUseCase.call();
    result.fold((failure) {
      emit(
        state.copyWith(
          getProductsStatus: ApiStatus.error,
          failure: failure.toString(),
        ),
      );
    }, (products) {
      emit(
        state.copyWith(
          getProductsStatus: ApiStatus.success,
          products: products,
        ),
      );
    });
  }


  Future<void> getProductDetails(
      GetProductDetailsEvent event, Emitter<ProductsState> emit) async {
    emit(
      state.copyWith(
        getProductDetailsStatus: ApiStatus.loading,
      ),
    );
    final result = await getOneProductsUseCase.call(event.id);
    result.fold((failure) {
      emit(
        state.copyWith(
          getProductDetailsStatus: ApiStatus.error,
          failureProductDetails: failure.toString(),
        ),
      );
    }, (productDetails) {
      emit(
        state.copyWith(
          getProductDetailsStatus: ApiStatus.success,
          productDetails: productDetails,
        ),
      );
    });
  }
}
