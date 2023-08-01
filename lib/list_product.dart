import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Map<String, String>> users = [
    {
      'name': 'Alfian',
      'avatar': 'A',
      'telp': '082324129582',
    },
    {
      'name': 'Setiawan',
      'avatar': 'S',
      'telp': '085255655985',
    },
    {
      'name': 'asdd',
      'avatar': 'X',
      'telp': '085255655985',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: users.map((user) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 25,
                  child: Text(user['avatar'] ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user['name'] ?? '',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 3),
                    Text(user['telp'] ?? ''),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
