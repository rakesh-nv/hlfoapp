import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hlfoapp/services/routes/app_pages.dart';
import 'package:hlfoapp/services/routes/app_routs.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://duhjvnfbpzcylmrxqiwm.supabase.co',
    // ✅ Your Supabase project URL
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR1aGp2bmZicHpjeWxtcnhxaXdtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE5NTQ1OTAsImV4cCI6MjA2NzUzMDU5MH0.ghzUgWhp8rWCdMPCzdIL3M7L2vOusWOx4lnudS-7KnA', // ✅ Your Supabase anon/public key
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hyperlocal Food Ordering',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: appPages,
    );
  }
}
