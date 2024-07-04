import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/products_entity.dart';
import '../models/products_models.dart';

abstract class BaseProductsRemoteDataSource{
  Future<List<ProductModel>> getProducts();
}

class ProductsRemoteDataSourceUseCase extends BaseProductsRemoteDataSource{
  final FirebaseFirestore firestore;
  ProductsRemoteDataSourceUseCase({required this.firestore});
  @override
  Future<List<ProductModel>> getProducts() async{

    final snapshot = await firestore.collection('products').get();
    return snapshot.docs.map((doc) => ProductModel.fromJson(doc.data())).toList();
  }
}