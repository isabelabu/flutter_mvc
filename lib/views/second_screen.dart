import 'package:flutter/material.dart';
import 'package:proj_estruturanova/components/custom_app_bar.dart';
import 'package:proj_estruturanova/controllers/navigation_controller.dart';
import 'package:proj_estruturanova/styles/app_styles.dart';

class SecondScreen extends StatelessWidget{
    const SecondScreen({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: const CustomAppBar(
                nextPage: '/third',
                showBackButton: false
            ),
            body: Stack(
                children:[
                    Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/cerberus.png'),
                                fit: BoxFit.none,
                                scale: 1.5,
                                alignment: Alignment.topCenter
                            ),
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: AppSpacing.cerberusTopPadding,
                            left: AppSpacing.cerberusLeftPadding,
                            right: AppSpacing.cerberusRightPadding,
                            bottom: AppSpacing.cerberusBottomPadding,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                const Text(
                                    'Segunda tela',
                                    style: AppTextStyles.text2nd,
                                    textAlign: TextAlign.center,
                                ),
                                const Text(
                                    'Cerberus',
                                    style: AppTextStyles.text2nd,
                                    textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                    height: AppSpacing.cerberusSpaceBetweenTextAndButton
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        ElevatedButton(
                                            style: AppTextStyles.roundedButton(AppColors.frieren),
                                            onPressed:(){
                                                NavigationController.goTo(context, '/third');
                                            },
                                            child: const Text('Frieren', 
                                            style: AppTextStyles.buttonText)
                                        ),
                                        const SizedBox(width: 20),
                                        ElevatedButton(
                                            style: AppTextStyles.roundedButton(AppColors.nikki),
                                            onPressed:(){
                                                NavigationController.goTo(context, '/fourth');
                                            },
                                            child: const Text(
                                                'Nikki',
                                                style: AppTextStyles.buttonText),
                                        ),
                                        const SizedBox(width: 20),
                                        ElevatedButton(
                                            style: AppTextStyles.roundedButton(AppColors.hutao),
                                            onPressed:(){
                                                NavigationController.goTo(context, '/fifth');
                                            },
                                            child: const Text(
                                                'Hutao',
                                                style: AppTextStyles.buttonText),
                                        )
                                    ],
                                )
                            ]
                        )
                    )
                ]
            )
        );
    }
}