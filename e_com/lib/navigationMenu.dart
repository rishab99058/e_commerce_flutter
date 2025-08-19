import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/helpers/helperFunction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NvaigationMenu extends StatelessWidget {
  const NvaigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) => controller.selectedIndex.value = value,
          backgroundColor: darkMode?TColors.black:TColors.white,
          indicatorColor: darkMode 
    ? TColors.white.withValues(alpha: 0.1) 
    : TColors.black.withValues(alpha: 0.1),

          
        destinations: [
        NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
        NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
        NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: "Cart"),
        NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
        NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),

        ]),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController
{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [ Container(color: Colors.green, child: Center(child: Text("Home Screen"))),   // 0
    Container(color: Colors.blue, child: Center(child: Text("Store Screen"))),   // 1
    Container(color: Colors.red, child: Center(child: Text("Cart Screen"))), // 2
    Container(color: Colors.orange, child: Center(child: Text("Wishlist Screen"))),  // 3
    Container(color: Colors.purple, child: Center(child: Text("Profile Screen"))),// 4
    ];



}