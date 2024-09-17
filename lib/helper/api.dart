import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get ( {required String uri , String? token }) async {
    Map<String , dynamic> headers={} ;
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(Uri.parse(uri)) ;
    if(response.statusCode==200){
      return jsonDecode(response.body) ;
    }
    else {
     return throw Exception("the response is failed and the status code is ${response.statusCode}"); 
    }
  }

  Future<dynamic> post ({ required String uri , dynamic body ,  String? token }) async {
   Map <String , String> headers = {} ;
   if(token!=null) {
    headers.addAll({
      'Authorization' : "Bearer $token" ,
    }) ;
   }
      http.Response response  = await http.post(
       Uri.parse(uri) ,
      body : body ,
      headers : headers ,
    ) ;
    if (response.statusCode==200){
    return jsonDecode(response.body); 
      
    }else {
      return throw Exception("there is error with status code ${response.statusCode} , and its body is ${response.body} ") ;
    }

  }

  Future<dynamic> put ({ required String uri , dynamic body ,  String? token} ) async {
   Map <String , String> headers = {} ;
   headers.addAll({
    'Content-Type' : 'application/x-www-form-urlencoded' ,
   });
   if(token!=null) {
    headers.addAll({
      'Authorization' : "Bearer $token" ,
    }) ;
   }
      http.Response response  = await http.post(
      Uri.parse(uri) , 
      body : body ,
      headers : headers ,
    ) ;
    if (response.statusCode==200){
    return jsonDecode(response.body); 
      
    } else {
      return throw Exception("there is error with status code ${response.statusCode} , and its body is ${response.body} ") ;
    }

  }

}