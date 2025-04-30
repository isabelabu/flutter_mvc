import 'package:flutter/material.dart';
import 'package:proj_estruturanova/components/custom_app_bar.dart';
import 'package:proj_estruturanova/controllers/navigation_controller.dart';
import 'package:proj_estruturanova/styles/app_styles.dart';

class FifthScreen extends StatelessWidget{
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hutao.png'),
                fit: BoxFit.none,
                scale: 3,
                alignment: Alignment.bottomLeft
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.hutaoTopPadding,
              left: AppSpacing.hutaoLeftPadding,
              right: AppSpacing.hutaoRightPadding,
              bottom: AppSpacing.hutaoBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Quinta tela',
                  style: AppTextStyles.text5th,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Hutao',
                  style: AppTextStyles.text5th,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.hutaoSpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.cerberus),
                      onPressed: () {
                        NavigationController.goTo(context, '/second');
                      },
                      child: const Text(
                        'Cerberus',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.frieren),
                      onPressed: () {
                        NavigationController.goTo(context, '/third');
                      },
                      child: const Text(
                        'Frieren',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.nikki),
                      onPressed: () {
                        NavigationController.goTo(context, '/fourth');
                      },
                      child: const Text(
                        'Nikki',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}