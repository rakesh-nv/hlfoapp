import 'package:get/get.dart';
import '../../screens/authscreen/auth_screen.dart';
import '../../screens/chef/chef_dashboard.dart';
import '../../screens/customer/customer_dashboard.dart';
import '../../screens/splash_screen.dart';

import 'app_routs.dart';

final List<GetPage> appPages = [
  GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
  GetPage(name: AppRoutes.auth, page: () => AuthScreen()),
  GetPage(name: AppRoutes.chefDashboard, page: () => ChefDashboard()),
  GetPage(name: AppRoutes.customerDashboard, page: () => CustomerDashboard()),
];
