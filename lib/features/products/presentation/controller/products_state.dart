part of 'products_bloc.dart';

class ProductsState extends Equatable {
  final ApiStatus getProductsStatus;
  final List<ProductDetails> products;
  final String failure;

  final ApiStatus getProductDetailsStatus;
  final ProductDetails productDetails;
  final String failureProductDetails;

  const ProductsState({
    required this.getProductsStatus,
    required this.products,
    required this.failure,
    required this.getProductDetailsStatus,
    required this.productDetails,
    required this.failureProductDetails,
  });

  factory ProductsState.init() {
    return ProductsState(
      getProductsStatus: ApiStatus.none,
      products: [],
      failure: '',
      getProductDetailsStatus: ApiStatus.none,
      productDetails: ProductDetails(),
      failureProductDetails: '',
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
      getProductDetailsStatus:
          getProductDetailsStatus ?? this.getProductDetailsStatus,
      productDetails: productDetails ?? this.productDetails,
      failureProductDetails:
          failureProductDetails ?? this.failureProductDetails,
    );
  }

  @override
  List<Object> get props => [
        getProductsStatus,
        products,
        failure,
        getProductDetailsStatus,
        productDetails,
        failureProductDetails,
      ];
}
