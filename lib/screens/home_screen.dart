import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_product_service.dart';
import 'package:store/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("New Trend"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16 , right: 16 , top: 65 ),
        child: FutureBuilder(
          future: GetAllProduct().getAllProduct() ,
           builder: (context, snapshot){
            if (snapshot.hasData){
              List<ProductModel> productList = snapshot.data! ;
              return GridView.builder(
                itemCount: productList.length,
          clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4 ,
              crossAxisSpacing: 10 ,
              mainAxisSpacing: 45 ,
              ) ,
             itemBuilder: (context , index) {
              return CustomCard( product: productList[index] ) ;
             }
             ) ;
            }
            else {return const Center(child: CircularProgressIndicator()) ; }
            
           }
        )
      ),
    );
  }
}
