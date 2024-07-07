import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/Helpers/enum_state.dart';
import '../../data/models/products_model.dart';
import '../../domain/use_case/get_products_use_case.dart';

part 'products_event.dart';

part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUseCase getProductsUseCase;


  ProductsBloc(this.getProductsUseCase,) : super(ProductsState.init()) {
    on<GetProductsEvent>(getProducts);
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
}
