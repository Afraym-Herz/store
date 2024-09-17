import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product_services.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_form_text_field.dart';

class UpdateScreen extends StatefulWidget {
   UpdateScreen({super.key});
  static String id = 'UpdateScreen';

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  String? title , price , description , image ;

  bool isLoading = false ;

  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel ;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Update Product",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                onChanged: (data){
                  title = data ;
                },
                
                hintText:  Text(product.title , style : const TextStyle(color : Colors.grey)  ) ,
              ),
              CustomTextField(
                onChanged: (data){
                  description = data ;
                },
                hintText:  Text(product.description, style : const TextStyle(color : Colors.grey) ),
              ),
              CustomTextField(
                onChanged: (data){
                  price = data ;
                },
                hintText:  Text(product.price.toString(), style : const TextStyle(color : Colors.grey) ),
                textInputType: TextInputType.number,
              ),
              CustomTextField(
                onChanged: (data){
                  image = data ;
                },
                hintText:  Text(product.image, style : const TextStyle(color : Colors.grey) ),
                
              ),
              CustomButton(
                text: 'Update' ,
                onTap: () async {
                  isLoading = true ;
                  setState((){});
                  try {
                    updateProduct(product); 
                  } catch (e) {
                    print(e.toString()) ;
                  }
                  isLoading = false ;
                  setState(() {});
                  
                }, 
                )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct (ProductModel product) async {
  UpdateProductServices().updateProductServices(
     id: product.id,
    title: title == null ? product.title : title!,
     price: price == null ? product.price.toString() : price!,
     desc: description == null ? product.description : description!,
     image: image == null ? product.image : image!,
     category: product.category ,
     );
     
}
}


