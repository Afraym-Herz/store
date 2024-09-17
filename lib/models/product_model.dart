class ProductModel {
   dynamic id ;
   String title , description , category , image ;
   dynamic price ;
   Rating rating ;
  ProductModel({required this.id, required this.title, required this.description, required this.category, required this.image, required this.price , required this.rating });

  factory ProductModel.fromJson(json){
    return ProductModel(
      id: json['id'] ,
     title: json['title'] ,
      description: json['description'],
       category: json['category'] ,
        image: json['image'],
         price: json['price'].toString() , 
         rating: Rating.fromJson(json['rating']) ,
         ); 
  }



}


class Rating {
    final int count ;
    final double rate ;

  Rating({required this.count, required this.rate});

  factory Rating.fromJson (json){
    return Rating(
      count: json['count'],
       rate: json['rate'] ,) ;
  }

}