part of 'products_bloc.dart';

sealed class ProductsEvent extends Equatable {
  const ProductsEvent();
}

class GetProductsEvent extends ProductsEvent {
  const GetProductsEvent();

  @override
  List<Object> get props => [];
}


