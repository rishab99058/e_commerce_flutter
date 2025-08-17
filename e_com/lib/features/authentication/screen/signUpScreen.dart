import 'package:e_com/features/authentication/screen/emailVerification.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/images.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/textStrings.dart';
import 'package:e_com/utils/helpers/helperFunction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      // app bar
      appBar: AppBar(),
      // body
      body: SingleChildScrollView(
        // padding
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          // Column
          child: Column(
            children: [
              // Sign up text
              Text(
                TTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // space
              const SizedBox(height: TSizes.spaceBtwSections),
              // from
              Form(
                child:
                    // column
                    Column(
                      children: [
                        // Row for first and last name
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                expands: false,
                                decoration: const InputDecoration(
                                  labelText: "First name",
                                  prefixIcon: Icon(Iconsax.user),
                                ),
                              ),
                            ),
                            const SizedBox(width: TSizes.spaceBtwInputFields),
                            Expanded(
                              child: TextFormField(
                                expands: false,
                                decoration: const InputDecoration(
                                  labelText: "Last name",
                                  prefixIcon: Icon(Iconsax.user),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            labelText: TTexts.email,
                            prefixIcon: Icon(Iconsax.direct_right),
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            labelText: TTexts.phoneNo,
                            prefixIcon: Icon(Iconsax.call),
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: "Confirm Password",
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwSections),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => Get.to(()=> const EmailVerification()),
                            child: const Text("Sign Up"),
                          ),
                        ),
                      ],
                    ),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),
              // Social Media Dividers
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    "Or Sign In with",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // social media buttons
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(TImages.google, width: 24, height: 24),
                      label: const Text("Google"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        TImages.facebook,
                        width: 24,
                        height: 24,
                      ),
                      label: const Text("Facebook"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
