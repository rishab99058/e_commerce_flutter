import 'package:e_com/common/style/spacingStyle.dart';
import 'package:e_com/utils/constants/images.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:e_com/utils/constants/textStrings.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
     precacheImage(AssetImage(TImages.successEmailImage), context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding:TSpacingStyle.paddingWithAppBarHeight*2 ,
        child: Column(
          children: [
            // Image
             Image(image: AssetImage(TImages.successEmailImage)),
              const SizedBox(height: TSizes.spaceBtwSections),
            // Message Title 
            Text(
                    TTexts.tEmailVerificationSuccessTitle,
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
             const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                    TTexts.tEmailVerificationSuccessMessage,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),

            // Message Subtitle
          ],
        ),),
      ),
    );
  }
}