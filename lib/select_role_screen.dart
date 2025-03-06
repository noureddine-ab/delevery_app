import 'package:flutter/material.dart';

class SelectRoleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Your Role'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Are you a delivery man or a client?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Delivery Man Option
                _buildRoleOption(
                  context,
                  imagePath: 'assets/delivery.png',
                  label: 'Delivery Man',
                  role: 'Delivery Man',
                ),
                // Client Option
                _buildRoleOption(
                  context,
                  imagePath: 'assets/client.png',
                  label: 'Client',
                  role: 'Client',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a role option
  Widget _buildRoleOption(
    BuildContext context, {
    required String imagePath,
    required String label,
    required String role,
  }) {
    return GestureDetector(
      onTap: () => _showRoleSelection(context, role),
      child: Column(
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }

  // Show role selection dialog
  void _showRoleSelection(BuildContext context, String role) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Role Selected'),
            content: Text('You selected: $role'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
    );
  }
}
