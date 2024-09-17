import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store/helper/api.dart';

import 'package:store/models/product_model.dart';
class GetAllProduct{

  Future<List <ProductModel>> getAllProduct () async {
  List <dynamic> data = await Api().get( uri: 'https://fakestoreapi.com/products' ) ; 
  List <ProductModel> productList = [] ;
  for (var i = 0; i < data.length; i++) {
    productList.add(
      ProductModel.fromJson(data[i])
      ) ;
  }
  return productList ;
  }

}