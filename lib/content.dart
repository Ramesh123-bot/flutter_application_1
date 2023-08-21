import 'package:flutter/material.dart';

import 'product details.dart';

void main() {
  runApp(const ProductPage());
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Page',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // ignore: deprecated_member_use
          backgroundColor: Colors.blue),

      home: ProductScreen(),
      //body:const SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      //  SizedBox(
      //   height: 48,
      //  )
      // ], ),)
    );
  }
}

class ProductScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Product 1',
      description: 'Product 1 description',
      price: 'RS.25000',
      image: 'lib/images/ramesh.jpeg',
    ),
    Product(
      name: 'Product 2',
      description: 'Product 2 description',
      price: '\$49.99',
      image: 'lib/images/sathish.jpeg',
    ),
    Product(
      name: 'Product 3',
      description: 'Product 3 description',
      price: '\$79.99',
      image: 'lib/images/apple.jpeg',
    ),
    Product(
      name: 'Product 3',
      description: 'Product 3 description',
      price: '\$79.99',
      image: 'lib/images/345.jpeg',
    ),

    Product(
      name: 'Product 3',
      description: 'Product 3 description',
      price: '\$79.99',
      image: 'lib/images/Unknown.jpeg',
    ),
    Product(
      name: 'Product 3',
      description: 'Product 3 description',
      price: '\$79.99',
      image: 'lib/images/model.jpeg',
    ),
    // Add more products as needed
  ];

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mobile_friendly),
            SizedBox(
              width: 10,
            ),
            Text('mobile items')
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            product: products[index],
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final String price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 242, 233, 233).withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.description,
                  style: const TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  product.price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Productdetails()),
                    );
                  },
                ),
                // GestureDetector(
                //   onTap: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) {
                //         return const Productdetails();
                //       },
                //     ),
                //   ),
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: const Color.fromARGB(255, 142, 177, 206),
                //         borderRadius: BorderRadius.circular(10)),
                //     padding: const EdgeInsets.all(10),
                //     child: const Text(
                //       "Product details ",
                //       style: TextStyle(
                //           color: Colors.white, fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
