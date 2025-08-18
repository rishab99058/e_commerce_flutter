import 'package:e_com/common/style/spacingStyle.dart';
import 'package:e_com/features/authentication/screen/loginScreen.dart';
import 'package:e_com/features/authentication/screen/resetPassword.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/textStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=> Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      
      body : SingleChildScrollView(
        child: Padding(padding:  TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
           crossAxisAlignment:
                CrossAxisAlignment.start,
          children: [
            // Heading
            Text(TTexts.forgotPassword, style : Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.left,),
            const SizedBox(height: TSizes.spaceBtwItems),
            // Subtitle
            Text(TTexts.forgotPasswordSubHeading, style : Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.left,),
            const SizedBox(height: TSizes.spaceBtwSections*2),
            // Text Field
             TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                            labelText: TTexts.email,
                            prefixIcon: Icon(Iconsax.direct_right),
                          ),
                        ),
             const SizedBox(height: TSizes.spaceBtwSections),
             SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: ()=> Get.to(()=>const ResetPassword()),
                            child: const Text(TTexts.submit),
                          ),
                        )


          ],
        ),
        ),
      )
    
    );
  }
}