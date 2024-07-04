// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ffi';

class Product {
  String? key;
  ProductDetails? productDetails;

  Product({
    this.key,
    this.productDetails
  });

  
}

class ProductDetails {
  String? name;
  String? desc;
  Array? points;

  
  ProductDetails({
    this.name,
    this.desc,
    this.points,
  });



  ProductDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    points = json['points'];
     
  }
}
