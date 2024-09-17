import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class CategoriesService {

  Future<List<dynamic>> getCategories({required String category}) async {
    List<dynamic> data = await Api().get( uri:  'https://fakestoreapi.com/products/category/$category') ;

      List<ProductModel> productList = [] ;
      for (var i = 0; i < data.length; i++) {
        productList.add(
          ProductModel.fromJson(data[i]) 
        ); 
      }
      return productList ;
  }

}