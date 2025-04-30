import 'package:flutter/material.dart';
import 'package:proj_estruturanova/components/custom_app_bar.dart';
import 'package:proj_estruturanova/controllers/navigation_controller.dart';
import 'package:proj_estruturanova/styles/app_styles.dart';

class FourthScreen extends StatelessWidget{
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const CustomAppBar(
        nextPage: '/fifth',
          showBackButton: true
        ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/nikki.png'),
                fit: BoxFit.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.nikkiTopPadding,
              left: AppSpacing.nikkiLeftPadding,
              right: AppSpacing.nikkiRightPadding,
              bottom: AppSpacing.nikkiBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Quarta Tela',
                  style: AppTextStyles.text4th,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Nikki',
                  style: AppTextStyles.text4th,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.nikkiSpaceBetweenTextAndButton),
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
                      style: AppTextStyles.roundedButton(AppColors.hutao),
                      onPressed: () {
                        NavigationController.goTo(context, '/fifth');
                      },
                      child: const Text(
                        'Hutao',
                        style: AppTextStyles.buttonText,
                      ),
                    )
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