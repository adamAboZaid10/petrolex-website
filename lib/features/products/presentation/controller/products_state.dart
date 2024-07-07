part of 'products_bloc.dart';

class ProductsState extends Equatable {
  final ApiStatus getProductsStatus;
  final List<ProductDetails> products;
  final String failure;


  const ProductsState({
    required this.getProductsStatus,
    required this.products,
    required this.failure,
  });

  factory ProductsState.init() {
    return ProductsState(
      getProductsStatus: ApiStatus.none,
      products: [],
      failure: '',
    );
  }

  ProductsState copyWith({
    ApiStatus? getProductsStatus,
    List<ProductDetails>? products,
    String? failure,
    ApiStatus? getProductDetailsStatus,
    ProductDetails? productDetails,
    String? failureProductDetails,
  }) {
    return ProductsState(
      getProductsStatus: getProductsStatus ?? this.getProductsStatus,
      products: products ?? this.products,
      failure: failure ?? this.failure,
    );
  }

  @override
  List<Object> get props => [
        getProductsStatus,
        products,
        failure,
      ];
}
