import 'package:e_com/common/style/spacingStyle.dart';
import 'package:e_com/features/authentication/screen/forgotPassword.dart';
import 'package:e_com/features/authentication/screen/signUpScreen.dart';
import 'package:e_com/navigationMenu.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/images.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/textStrings.dart';
import 'package:e_com/utils/helpers/helperFunction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align everything to left
            children: [
              Image(height: 150, image: AssetImage(TImages.lightAppLogo)),

              Text(
                TTexts.tLoginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.sm),
              Text(
                TTexts.tLoginSubTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),

              FormWidget(),
              ButtonWigets(dark: dark),

              const SizedBox(height: TSizes.md),

              const SizedBox(height: TSizes.md),

              SocialMeadSignInWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMeadSignInWidgets extends StatelessWidget {
  const SocialMeadSignInWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            icon: Image.asset(TImages.facebook, width: 24, height: 24),
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
    );
  }
}

class ButtonWigets extends StatelessWidget {
  const ButtonWigets({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Text("Or Sign In with", style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
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

            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(TTexts.tRememberMe),
                  ],
                ),

                TextButton(
                  onPressed: () => Get.to(()=> ForgotPassword()),
                  child: const Text(TTexts.tForgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(()=>const NvaigationMenu()),
                child: const Text("Sign In"),
              ),
            ),
            const SizedBox(height: TSizes.sm),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUp()),
                child: const Text("Create Account"),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
