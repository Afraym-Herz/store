import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories () async {
    List<dynamic> data = await Api().get( uri: 'https://fakestoreapi.com/products/categories' ) ; 
    return data ;
  }
}