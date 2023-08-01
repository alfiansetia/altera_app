import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black12,
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildAvatar(),
              const SizedBox(height: 10),
              const Text(
                'Alfian',
                style: TextStyle(fontSize: 24),
              ),
              _buildIcon('name'),
              const SizedBox(height: 8),
            ],
          ),
        ),
        _buildData(title: 'Email', value: 'alfi@gmail.com'),
        _buildData(title: 'Gender', value: 'Male'),
        _buildData(title: 'Phone', value: '0822252265558'),
      ],
    );
  }

  Widget _buildIcon(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.mail,
              color: Colors.yellow.shade800,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.chat,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildData({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 80,
                child: Text(title),
              ),
              Expanded(
                child: Text(value),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(
            color: Colors.grey,
            height: 3,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return const CircleAvatar(
      radius: 75,
      backgroundColor: Color.fromRGBO(64, 105, 225, 1),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/boy.png'),
        radius: 70,
      ),
    );
  }
}
