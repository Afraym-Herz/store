import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_screen.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product });

  final ProductModel product ; 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, UpdateScreen.id , arguments: product ) ;
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
          Container(
            height: 130,
            width: 220,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Color.fromARGB(255, 211, 211, 211),
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ]),
            child:  Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,6) ,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$'"${product.price}" ,
                          style:  const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: -45,
              child: Image.network(
            product.image ,
            width: 100,
            height: 100,
          ),
          ),
        ],
        ),
      ),
    );
  }
}
