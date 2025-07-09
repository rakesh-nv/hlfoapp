import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/auth_service.dart';

class ChefDashboard extends StatelessWidget {
  const ChefDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chef Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await AuthService().signOut();
              Get.offAllNamed('/auth');
            },
          )
        ],
      ),
      body: const Center(child: Text("Welcome, Chef!")),
    );
  }
}
