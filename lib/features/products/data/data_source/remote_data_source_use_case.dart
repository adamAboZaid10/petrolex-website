import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/products_model.dart';

abstract class BaseProductsRemoteDataSource {
  Future<List<ProductDetails>> getProducts();
}

class ProductsRemoteDataSource implements BaseProductsRemoteDataSource {
  final FirebaseFirestore fireStore;

  ProductsRemoteDataSource(this.fireStore);

  @override
  Future<List<ProductDetails>> getProducts() async {
    try {
      final snapshot = await fireStore.collection('product').get();
      if (snapshot.docs.isNotEmpty) {
        final products = snapshot.docs.map((doc) {
          final data = doc.data();
          return ProductDetails.fromJson(Map<String, dynamic>.from(data));
        }).toList();
        return products;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }
}
