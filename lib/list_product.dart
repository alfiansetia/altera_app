import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Map<String, String>> product = [
    {
      'name': 'Es Jus Alpukat',
      'image': '1.jpeg',
      'price': '10000',
      'desc': 'Jus paling laris',
    },
    {
      'name': 'Ayam Goreng Kalasan',
      'image': '2.jpeg',
      'price': '10000',
      'desc': 'Ayam Pilihan paling empuk',
    },
    {
      'name': 'Nasi goreng semrawut',
      'image': '3.jpg',
      'price': '10000',
      'desc':
          'Nasi dengan diperkaya akan sebuah beras murni dari thailand yang terasa sangat spesial',
    },
    {
      'name': 'Nasi goreng semrawut',
      'image': '4.jpeg',
      'price': '10000',
      'desc':
          'Nasi dengan diperkaya akan sebuah beras murni dari thailand yang terasa sangat spesial',
    },
    {
      'name': 'Nasi goreng semrawut',
      'image': '5.jpeg',
      'price': '10000',
      'desc':
          'Nasi dengan diperkaya akan sebuah beras murni dari thailand yang terasa sangat spesial',
    },
    {
      'name': 'Nasi goreng semrawut',
      'image': '6.jpeg',
      'price': '10000',
      'desc':
          'Nasi dengan diperkaya akan sebuah beras murni dari thailand yang terasa sangat spesial',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: product.map((prod) {
          String name = prod['name'] ?? '';
          String img = prod['image'] ?? '1.jpeg';
          String price = prod['price'] ?? '';
          String desc = prod['desc'] ?? '';
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/makanan/$img',
                    fit: BoxFit.fill,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              // height: 40,
                              width: 150,
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'RP. $price',
                              style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: Text(
                            desc,
                            style: const TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
