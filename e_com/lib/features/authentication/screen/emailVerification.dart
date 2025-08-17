import 'package:e_com/features/authentication/screen/loginScreen.dart';
import 'package:e_com/utils/constants/images.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/textStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(TImages.verifyEmailImage), context);
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // remove back arrow
        automaticallyImplyLeading: false,
        // need only cross button
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      // Scroll view
      body: SingleChildScrollView(
        // padding
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child:
              // Column
              Column(
                children: [
                  // Image
                  Image(image: AssetImage(TImages.verifyEmailImage)),
                  // space between section
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Heading
                  Text(
                    TTexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  // Email need to make it dynamic
                  Text(
                    "vermau2k01@gmail.com",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Text(
                    TTexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                   const SizedBox(height: TSizes.spaceBtwSections),
                  // Buttons for Continue and Resend Email
                   SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: const Text("Continue"),
                          ),
                        ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Resend Email"),
              ),
            )

                ],
              ),
        ),
      ),
    );
  }
}
