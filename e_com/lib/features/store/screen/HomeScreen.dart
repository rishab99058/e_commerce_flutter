import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/helpers/helperFunction.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = THelperFunctions.screenWidth();
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Top Background (Primary Gradient)
          Container(
            height: 400,
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  TColors.primary,
                  TColors.primary.withOpacity(0.7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // 🔹 Bottom Screen with Rounded Top + Shadow
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenWidth,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                color: isDark ? Colors.black : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15), // halka shadow
                    blurRadius: 20, // shadow softness
                    offset: const Offset(0, -5), // shadow upar se niche
                  ),
                ],
              ),
              child: Column(
                children: [
                  // 🔹 Small Handle Bar (Optional)
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
