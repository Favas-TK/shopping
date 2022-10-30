import 'package:flutter/material.dart';

class UserCategory extends StatelessWidget {
  UserCategory({super.key});
  final category = [
    {'category': 'women', 'image': 'https://pluspng.com/img-png/shopping-png-woo-commerce-supported-woman-shopping-png-258.png'},
    {'category': 'men', 'image': 'https://cdn7.dissolve.com/p/D2115_162_751/D2115_162_751_1200.jpg'},
    {'category': 'footwear', 'image': 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/1f07967493801.560ac5f5c53c7.jpg'},
    {'category': 'bags', 'image': 'https://static.contrado.com/resources/images/2020-12/165904/tote-bags-designed-online-1049209_l.jpeg'},
    {'category': 'Accessories', 'image': 'https://th.bing.com/th/id/OIP.ErWc1ipwf8wJXedOEYUn4AEsCo?pid=ImgDet&rs=1'},
    {'category': 'kids', 'image': 'https://www.kosher.com/resized/open_graph/s/h/shutterstock_454009207.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(
                      category[index].values.last,
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      category[index].values.first,
                    ),
                  ),
                ],
              ));
        },
        itemCount: category.length,
      ),
    );
  }
}
