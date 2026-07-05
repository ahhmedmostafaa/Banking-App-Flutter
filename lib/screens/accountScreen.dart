// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Account {
  final String name;
  final String email;
  final String picture;

  Account({
    required this.name,
    required this.email,
    required this.picture,
  });
}

class AccountWidget extends StatelessWidget {
  final Account account;

  const AccountWidget({required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(account.picture),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: const EdgeInsets.all(16),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        account.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        account.email,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  final List<Account> accounts = [
    Account(
      name: 'Ahmed Mostafa Hussein',
      email: 'a7medmostafa@gmail.com',
      picture: 'assets/ahmed.jpg',
    ),
    Account(
      name: 'Khaled Mohamed Ahmed',
      email: 'khaledmohamed@gmail.com',
      picture: 'assets/khaled.jpg',
    ),
    Account(
      name: 'Youssef Gamal Ghoneim',
      email: 'youssefgamal@gmail.com',
      picture: 'assets/youssef.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return AccountWidget(account: accounts[index]);
        },
      ),
    );
  }
}
