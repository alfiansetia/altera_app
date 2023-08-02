import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.mail,
                          size: 50,
                          color: Colors.orange,
                        ),
                        Text(
                          'Makanan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.android,
                        size: 50,
                        color: Colors.orange,
                      ),
                      Text(
                        'Minuman',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.gavel,
                        size: 50,
                        color: Colors.orange,
                      ),
                      Text(
                        'Snack',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/makanan/1.jpeg',
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 1),
                            const Text(
                              'The Alpha',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('RESTAURANT'),
                                Text(
                                  'RP. 1.000.000',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Open Now',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text('* 400M from you'),
                              ],
                            ),
                            const SizedBox(height: 1),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                  right: 15,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: const Center(
                        child: Text(
                          '9.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/makanan/1.jpeg',
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.white,
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 1),
                            const Text(
                              'King Cafe',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('RESTAURANT'),
                                Text(
                                  'RP. 1.000.000',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Open Now',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text('* 500M from you'),
                              ],
                            ),
                            const SizedBox(height: 1),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                  right: 15,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: const Center(
                        child: Text(
                          '9.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
