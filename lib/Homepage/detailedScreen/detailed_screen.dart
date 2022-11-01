import 'package:flutter/material.dart';
import 'package:shopping/Product_model/model.dart';

class DetailedScreen extends StatefulWidget {
  static const routeName = 'detaild screen';
  const DetailedScreen({super.key});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  late Products productData;
  bool _initLoaded = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_initLoaded) {
      productData = ModalRoute.of(context)!.settings.arguments as Products;
    }
    _initLoaded = false;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                decoration: const BoxDecoration(color: Colors.teal),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: const Icon(Icons.chevron_left_outlined),
                        ),
                        const Icon(Icons.share),
                        Icon(Icons.share)
                      ],
                    ),
                    Hero(
                      tag: (productData.hashCode),
                      child: Image.network(
                        productData.image!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(productData.name!,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Text(
                        productData.discription!,
                        style: const TextStyle(color: Colors.black, fontSize: 11),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Delivery Details',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              trailing: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'check delivery details',
                                    style: const TextStyle(color: Colors.blue),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Bank Offers',
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              trailing: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'More',
                                    style: TextStyle(color: Colors.blue),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Product Details',
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              trailing: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'more',
                                    style: TextStyle(color: Colors.blue),
                                  )),
                            ),
                          ], 
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.share))
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite_rounded))
                                ],
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.shopping_bag),
                                  ),
                                  const Text('add bag')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
