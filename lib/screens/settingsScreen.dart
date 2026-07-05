// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:banking_app/widgets/otherDetailsDivider.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'General Settings',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                subtitle: const Text('English'),
                onTap: () {
                  // Implement language settings
                },
              ),
              const OtherDetailsDivider(),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Notifications'),
                subtitle: const Text('Enabled'),
                onTap: () {
                  // Implement notification settings
                },
              ),
              const OtherDetailsDivider(),
              const Text(
                'Account Settings',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(Icons.security),
                title: const Text('Security'),
                onTap: () {
                  // Implement security settings
                },
              ),
              const OtherDetailsDivider(),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  // Navigate to profile settings
                },
              ),
              const OtherDetailsDivider(),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log out'),
                onTap: () {
                  // Implement log out functionality
                },
              ),
              const OtherDetailsDivider(),
              const Text(
                'About',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About Us'),
                onTap: () {
                  // Navigate to About Us page
                },
              ),
              const OtherDetailsDivider(),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help & Support'),
                onTap: () {
                  // Navigate to Help & Support page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
