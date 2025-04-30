import 'package:flutter/material.dart';
import 'package:proj_estruturanova/components/custom_app_bar.dart';
import 'package:proj_estruturanova/controllers/navigation_controller.dart';
import 'package:proj_estruturanova/styles/app_styles.dart';

class ThirdScreen extends StatelessWidget{
    const ThirdScreen({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: const CustomAppBar(
                nextPage: '/fourth',
                showBackButton: true
            ),
            body: Stack(
                children:[
                    Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/frieren.png'),
                                fit: BoxFit.none,
                                alignment: Alignment.bottomCenter,
                                scale: 3
                            ),
                        ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: AppSpacing.frierenTopPadding,
                            left: AppSpacing.frierenLeftPadding,
                            right: AppSpacing.frierenRightPadding,
                            bottom: AppSpacing.frierenBottomPadding,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                const Text(
                                    'Terceira Tela',
                                    style: AppTextStyles.text3rd,
                                    textAlign: TextAlign.center,
                                ),
                                const Text(
                                    'Frieren',
                                    style: AppTextStyles.text3rd,
                                    textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                    height: AppSpacing.frierenSpaceBetweenTextAndButton
                                ),
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