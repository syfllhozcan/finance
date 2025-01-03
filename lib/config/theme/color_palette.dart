import 'package:flutter/material.dart';

class ColorPalette {
  ///////////////////////////////// Finance /////////////////////////////
  static const primary = Color(0xff0369A1);
  static const secondary = Color(0xfff3f3f3);
  static const backgroundColor = Color(0xffFFFFFF);
  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff000000);
  static const thumbColor = Color(0xff4F3D56);
  static const trackColor = Color(0xffF2F2F5);
  //create new password geri butonu
  static const borderColor = Color(0xffF2F2F5);
  static const borderColorDialog = Color(0xffE3E9ED);
  static const textColor = Color(0xff1f2c37);
  static const textColor2 = Color(0xff78828A);
  //politika ve kullanım koşulları sayfası grey1 koyu gri
  static const textColorSecondary = Color(0xff9CA4AB);
  static const hintColor = Color(0xff78828A);
  static const buttonColorBlue = Color(0xff0369A1);
  // buna gerek yok normal yazı ile değiş 1f2c37
  static const employmentTitleColor = Color(0xff1F2937);
  // grey2 daha açık gri
  static const employmentSubTitleColor = Color(0xff4B5563);
  static const textFieldBorderColor = Color(0xffECF1F6);
  static const backdrop = Color(0xff4F3D56); //filter siz
  static const backdropFilter = Color.fromRGBO(79, 61, 86, 0.63);
  static const dialogIconBoxColor = Color(0xffE2E0E4);
  static const dialogIconColor = Color(0xff4F3D56);
  static const otpBoxColor = Color(0xffEFEEF0);
  static const dividerColor = Color(0xffF2F2F5); // sign ve diğer + olan...
  static const signDividerColor = Color(0xffE3E9ED);
  //genelde sign ve diğer + olan...
  static const iconBoxColor = Color(0xffECF1F6);
  static const dashboardCardColor = Color(0xff1C162E);
  static const downIconColor = Color(0xff979797);
  static const tileSubtitleColor = Color(0xffC6C4CA);
  static const green = Color(0xff00CF7F);
  static const red = Color(0xffFF3A79);
  static const pasiveColor = Color(0xffD8D8D8);
  static const yellow = Color(0xffEFBC48);
  static const grey78 = Color(0xff787878);
  //araba olan card
  static const cardBackgroundColor = Color(0xffF3F3F3);
  static const permitBoxColor = Color(0xff99B3AD);
  static const dolarBoxColor = Color(0xffE2E0E4);

  ///////////////////////////////////////////////////
  /*
  //static const primary = Color(0xff92A3FD);
  static const primaryLight = Color(0xff9DCEFF);
  //static const backgroundColor = Color.fromARGB(255, 240, 240, 240);
  //static const secondary = Color(0xffC58BF2);
  static const secondaryLight = Color(0xffEEA4CE);
  static const primaryG = [primary, primaryLight];
  static const secondaryG = [secondary, secondaryLight];
  //static const black = Color(0xff1D1617);
  //static const white = Color(0xffFFFFFF);
  static const gray1 = Color(0xff7B6F72);
  static const gray2 = Color(0xffADA4A5);
  static const gray3 = Color(0xffDDDADA);
  static const gray4 = Color.fromARGB(255, 249, 240, 240);
  static const success = Color(0xff42D742);
  static const warning = Color(0xffFFD600);
  static const danger = Color(0xffFF0000);
*/

  ///////////////////////////////////////////////////////////////////////

  // static const onPrimary = Color(0xFFFFFFFF);
  // static const primaryContainer = Color(0xFFD4E3FF);
  // static const onPrimaryContainer = Color(0xFF001C3A);
  // static const secondary = Color(0xFF904D00);
  // static const onSecondary = Color(0xFFFFFFFF);
  // static const secondaryContainer = Color(0xFFFFDCC2);
  // static const onSecondaryContainer = Color(0xFF2E1500);
  // static const onTertiary = Color(0xFFFFFFFF);
  // static const error = Color(0xFFBA1A1A);
  // static const onError = Color(0xFFFFFFFF);
  // static const outline = Color(0xFF73777F);
  // static const surface = Color(0xFFFAF9FD);
  // static const onSurface = Color(0xFF1A1C1E);
  // static const onSurfaceVariant = Color(0xFF43474E);
  // static const inverseSurface = Color(0xFF2F3033);
  // static const inverseOnSurface = Color(0xFFF1F0F4);
  // static const inversePrimary = Color(0xFFA6C8FF);
  // static const outlineVariant = Color(0xFFC3C6CF);
  // static const surfaceContainerHighest = Color(0xFFE3E2E6);
  // static const surfaceContainerHigh = Color(0xFFE8E8EB);
  // static const surfaceContainer = Color(0xFFEEEDF1);
  // static const surfaceContainerLow = Color(0xFFF4F3F7);
  // static const surfaceContainerLowest = Color(0xFFFFFFFF);
  // static const primaryDark = Color(0xFFA6C8FF);
  // static const onPrimaryDark = Color(0xFF00315F);
  // static const primaryContainerDark = Color(0xFF004786);
  // static const onPrimaryContainerDark = Color(0xFFD4E3FF);
  // static const secondaryDark = Color(0xFFFFB77C);
  // static const onSecondaryDark = Color(0xFF4D2700);
  // static const secondaryContainerDark = Color(0xFF6D3900);
  // static const onSecondaryContainerDark = Color(0xFFFFDCC2);
  // static const errorDark = Color(0xFFFFB4AB);
  // static const onErrorDark = Color(0xFF690005);
  // static const outlineDark = Color(0xFF8D9199);
  // static const surfaceDark = Color(0xFF121316);
  // static const onSurfaceDark = Color(0xFFC6C6CA);
  // static const onSurfaceVariantDark = Color(0xFFC3C6CF);
  // static const inverseSurfaceDark = Color(0xFFE3E2E6);
  // static const inverseOnSurfaceDark = Color(0xFF1A1C1E);
  // static const inversePrimaryDark = Color(0xFF005FAF);
  // static const outlineVariantDark = Color(0xFF43474E);
  // static const surfaceContainerHighestDark = Color(0xFF333538);
  // static const surfaceContainerHighDark = Color(0xFF292A2D);
  // static const surfaceContainerDark = Color(0xFF1E2022);
  // static const surfaceContainerLowDark = Color(0xFF1A1C1E);
  // static const surfaceContainerLowestDark = Color(0xFF0D0E11);
//   static const primary20 = Color(0xFF0E275D);
//   static const primary30 = Color(0xFF0946C4);
//   static const primary40 = Color(0xFF0253E8);
//   static const primary50 = Color(0xFF096EFF);
//   static const primary60 = Color(0xFF2090FF);
//   static const primary70 = Color(0xFF4AB3FF);
//   static const primary80 = Color(0xFFABCCFB);
//   static const primary95 = Color(0xFFE7EEFF);
//   static const primary99 = Color(0xFFF4F5FE);
//   static const primary94 = Color(0xFFE7EEFF);
//   static const secondary20 = Color(0xFF752900);
//   static const secondary30 = Color(0xFF9A4512);
//   static const secondary40 = Color(0xFFC2580C);
//   static const secondary50 = Color(0xFFEA740C);
//   static const secondary70 = Color(0xFFFBAA3C);
//   static const secondary80 = Color(0xFFFDCB74);
//   static const secondary90 = Color(0xFFFEE2AA);
//   static const secondary95 = Color(0xFFFFF2D5);
//   static const secondary99 = Color(0xFFFFF9ED);
//   static const tertiary40 = Color(0xFF00A392);
//   static const tertiary60 = Color(0xFF00E2C5);
//   static const tertiary80 = Color(0xFF3AFFEC);
//   static const tertiary95 = Color(0xFFC0FFF8);
//   static const tertiary99 = Color(0xFFEDFFFC);
//   static const error30 = Color(0xFF93000A);
//   static const error40 = Color(0xFFBA1A1A);
//   static const error50 = Color(0xFFDE3730);
//   static const error60 = Color(0xFFFF5449);
//   static const error80 = Color(0xFFFFB4AB);
//   static const error95 = Color(0xFFFFEDEA);
//   static const neutral0 = Color(0xFF000000);
//   static const neutral10 = Color(0xFF000407);
//   static const neutral20 = Color(0xFF0F172A);
//   static const neutral30 = Color(0xFF1E293B);
//   static const neutral40 = Color(0xFF334155);
//   static const neutral50 = Color(0xFF475569);
//   static const neutral60 = Color(0xFF64748B);
//   static const neutral70 = Color(0xFF94A3B8);
//   static const neutral80 = Color(0xFFCBD5E1);
//   static const neutral90 = Color(0xFFE2E8F0);
//   static const neutral95 = Color(0xFFF1F5F9);
//   static const neutral99 = Color(0xFFF8FAFC);
//   static const neutral100 = Color(0xFFFFFFFF);
//   static const neutralVariant20 = Color(0xFF2C3137);
//   static const neutralVariant40 = Color(0xFF5A5F66);
//   static const neutralVariant50 = Color(0xFF73777F);
//   static const neutralVariant70 = Color(0xFFA8ABB4);
//   static const neutralVariant80 = Color(0xFFC3C6CF);
//   static const neutralVariant90 = Color(0xFFDFE2EB);
//   static const neutralVariant95 = Color(0xFFEBEDF4);
//   static const neutralVariant99 = Color(0xFFFDFCFF);
//   static const semanticgreen30 = Color(0xFF324F00);
//   static const semanticgreen50 = Color(0xFF578400);
//   static const semanticgreen60 = Color(0xFF6C9F12);
//   static const semanticgreen70 = Color(0xFF85BB31);
//   static const semanticgreen99 = Color(0xFFF9FFE7);
}
