import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomerDashboard extends StatelessWidget {
  const CustomerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await Supabase.instance.client.auth.signOut();
              Get.offAllNamed('/auth');
            },
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome Customer! 🛒\nExplore restaurants and order your favorite food.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
