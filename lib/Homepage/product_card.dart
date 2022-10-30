import 'package:flutter/material.dart';
import 'package:shopping/Homepage/detailedScreen/detailed_screen.dart';
import 'package:shopping/Product_model/model.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.productData});
  Products productData;
 


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>  Navigator.of(context).pushNamed(DetailedScreen.routeName , arguments: productData), 
      child: Column(
        children: [
          Stack(children: [
            Container(
              padding: const EdgeInsets.all(2),
              height: 220, width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              //color: Colors.yellow,
              child: Hero(
                tag: productData.hashCode,
                child: Image.network(
                  productData.image!,
                ),
              ),
            ),
             Align(
                child: Padding(
                  
              padding:const EdgeInsets.only(top: 180, left: 100, bottom: 10),
              child: IconButton(onPressed: () {
                
              }, icon:const Icon(Icons.favorite_border_rounded),)
            )
            )
          ]
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: Text(productData.name!,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: Text(productData.discription!,
            style: TextStyle(color: Colors.blue,fontSize: 11),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: Text(
              productData.price!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(productData.discount!),
          ),
        ],
      ),
    );
  }
}
