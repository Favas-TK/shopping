import 'package:flutter/material.dart';
import 'package:shopping/Homepage/catogory.dart';
import 'package:shopping/Homepage/navigation.dart';
import 'package:shopping/Homepage/product_card.dart';
import 'package:shopping/Product_model/model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Products> product = [
    Products(
        name: 'T-Shirts',
        image:
            'https://n4.sdlcdn.com/imgs/i/k/d/Indian-Terrain-100-Percent-Cotton-SDL317035510-1-e3777.jpg',
        price: 'price 599',
        discription:
            'Indian Terrain 100 % Cotton Red Solid Regular Fit T-Shirt for Men ',
        discount: '20% off'),
    Products(
      name: 'reebok Running shoe',
      image:
          'https://rukminim1.flixcart.com/image/1408/1408/shoe/c/t/z/black-tin-grey-white-runtone-doheny-lp-reebok-9-original-imadh65atjjpbbde.jpeg?q=90',
      discription: 'REEBOK Runtone Doheny LP Running Shoes For Men - Buy Black',
      price: 'price 2999',
      discount: '10% off',
    ),
    Products(
      name: 'reebok casuel',
      image:
          'https://n4.sdlcdn.com/imgs/a/0/p/Reebok-Classic-Proton-Casual-Shoes-SDL239663081-1-2a0b6.jpg',
      discription:
          'Reebok Classic Proton Casual Shoes - Buy Reebok Classic Proton Casual',
      price: 'price 3999',
      discount: '30% off',
    ),
    Products(
      name: 'adidas shoes for men',
      image:
          'https://static.highsnobiety.com/thumbor/pp_XetxMO2WSp1pC0EuetqtKPTQ=/1600x1067/static.highsnobiety.com/wp-content/uploads/2019/02/19153143/best-adidas-sneakers-2019-main.jpg',
      discription: 'Best adidas Shoes of 2019 (So Far) | Highsnobiety',
      price: 'price 1999',
      discount: '25% off',
    ),
    Products(
      name: 'Puma',
      image:
          'https://www.onsport.com.au/store/assets/1180/2080PMAADMIN85174201-CTNBLK-03-detail-8f393630-9ab2-4db0-b55a-05c481f98518.jpg',
      discription: 'Puma Essentials Tank Mens | Puma | Tops | Mens Sportswear',
      price: 'price 1823',
      discount: '23% off',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomeDrawer(),
        backgroundColor: const Color.fromARGB(255, 217, 216, 212),
        body: SingleChildScrollView(
          // physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              UserCategory(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 25,
                    childAspectRatio: .40,
                  ),
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(
                      productData: product[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
