import 'package:flutter/material.dart';

class AppColors{
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Colors.black;
  static const Color appBar = Color(0xFFF27781);
  static const Color button = Color(0xFF9582D9);

  static const Color cerberus = Color(0xFFA6550F);
  static const Color frieren = Color(0xFF6FA8BF);
  static const Color hutao = Color(0xFFA62E2E);
  static const Color nikki = Color(0xFFD99CD5);
}

class AppTextStyles{
  static const TextStyle clockText = TextStyle(
    color: AppColors.white,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    fontFamily: 'AMORIA',
    shadows:[
      Shadow(
        blurRadius: 10.0,
        color: AppColors.black,
        offset: Offset(1,1),
      ),
    ],
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: 'Vendya'
  );

  static const TextStyle appBarText = TextStyle(
    color: AppColors.white,
    fontSize: 30,
    fontFamily: 'OceanSummer'
  );

  static const TextStyle text2nd = TextStyle(
    fontSize: 35,
    color: AppColors.cerberus,
    fontFamily: 'Hippo'
  );

  static const TextStyle text3rd = TextStyle(
    fontSize: 50,
    color: AppColors.frieren,
    fontFamily: 'AestheticMoment'
  );
  static const TextStyle text4th = TextStyle(
    fontSize: 40,
    color: AppColors.nikki,
    fontFamily: 'Vendya'
  );
  static const TextStyle text5th = TextStyle(
    fontSize: 42,
    color: AppColors.hutao,
    fontFamily: 'AMORIA'
  );


  static ButtonStyle roundedButton(Color backgroundColor){
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 12
      ),
    );
  }

  static ButtonStyle roundedButtonWithShadow(Color backgroundColor){
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 6,
      shadowColor: Colors.black.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 14
      ),
    );
  }
}

class AppSpacing{
  static const double cerberusTopPadding = 370;
  static const double cerberusLeftPadding = 20;
  static const double cerberusRightPadding = 20;
  static const double cerberusSpaceBetweenTextAndButton = 30;
  static const double cerberusSpaceAfterButtons = 20;
  static const double cerberusBottomPadding = 10;

  static const double frierenTopPadding = 5;
  static const double frierenLeftPadding = 20;
  static const double frierenRightPadding = 20;
  static const double frierenSpaceBetweenTextAndButton = 5;
  static const double frierenSpaceAfterButtons = 20;
  static const double frierenBottomPadding = 20;

  static const double nikkiTopPadding = 450;
  static const double nikkiLeftPadding = 20;
  static const double nikkiRightPadding = 20;
  static const double nikkiSpaceBetweenTextAndButton = 20;
  static const double nikkiSpaceAfterButtons = 20;
  static const double nikkiBottomPadding = 20;

  static const double hutaoTopPadding = 30;
  static const double hutaoLeftPadding = 20;
  static const double hutaoRightPadding = 20;
  static const double hutaoSpaceBetweenTextAndButton = 10;
  static const double hutaoSpaceAfterButtons = 20;
  static const double hutaoBottomPadding = 20;
}