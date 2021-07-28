import 'dart:ui';

import 'package:Assignment_Flutter/constants/colors.dart';
import 'package:Assignment_Flutter/constants/fonts.dart';
import 'package:flutter/material.dart';


class Styles {
  static getWhiteTextTheme(TextStyle textStyle) {
    return textStyle.apply(
      color: ColorConstants.WHITE,
    );
  }

  static getColoredTextTheme(TextStyle textStyle, Color color) {
    return textStyle.apply(
      color: color,
    );
  }

  static getTextTheme() {
    return new TextStyle(
      color: ColorConstants.WHITE,
    );
  }

  static getProfileNameTextTheme() {
    return TextStyle(
      fontFamily: FontFamily.ROBOTO,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: ColorConstants.CARBON,
      shadows: [
        Shadow(
          offset: Offset(0, 0),
          blurRadius: 1.5,
          color: ColorConstants.GRAY_10,
        )
      ],
    );
  }
  static const kTextStyleSearch = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.ROBOTO,

      color: ColorConstants.kTextDefault);

  static getButtonRadius(double radius) {
    return BorderRadius.horizontal(
        left: Radius.circular(radius), right: Radius.circular(radius));
  }

  static const TextStyle commonButtonTextTheme = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const TextStyle buttonSmallDarkTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const TextStyle screenTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorConstants.CARBON,
  );

  static const TextStyle dialogItemTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );

  static const TextStyle dialogTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: ColorConstants.CARBON,
  );

  static const TextStyle commonTextStyleWithSize18 = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );
  static const TextStyle galleryCountDarkTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const TextStyle mediaDurationDarkTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );
  static const TextStyle buttonDarkTextStyle = const TextStyle(
    color: ColorConstants.WHITE,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  static const TextStyle headingTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
    fontSize: 13,
  );

  static const TextStyle mediaDurationLightDropDownStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorConstants.GRAY_3,
  );
  static const TextStyle profilePhotoTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const TextStyle boldTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle navigationBarTitleStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ColorConstants.CARBON,
  );

  static const TextStyle shippingAddressButtonStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: ColorConstants.BLACK,
  );

  static const TextStyle shippingAddressListContentStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: ColorConstants.BLACK,
  );

  static const TextStyle shippingAddressListContentNameStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: ColorConstants.BLACK,
  );

  static const TextStyle shippingAddressDefaultStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: ColorConstants.BLACK,
  );

  static const TextStyle commonTextStyleWithSize25 = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w500,
    fontSize: 25,
  );

  static const TextStyle enterYourEmailLabelStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );

  static const TextStyle setUpNoteTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle existingCustomerLabelStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static const commonTextStyleWith16 = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );

  static const hintTextStyleWith16 = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );

  static const createAccountTextStyle = const TextStyle(
    color: ColorConstants.WHITE,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  static const welcomeTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: ColorConstants.WHITE_TRANSPARENT_CC,
  );

  static const resendOTPTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );

  static const enterCodeTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w500,
    fontSize: 25,
  );

  static const emailSentTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );

  static const newCostumerTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static const editBtnTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const privacyPolicyTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  static getRegistrationFieldTextStyleWithColor(Color color) {
    return TextStyle(
      fontFamily: FontFamily.ROBOTO,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: color,
    );
  }

  static getProfileFieldTextStyleWithColor(Color color) {
    return TextStyle(
      fontFamily: FontFamily.ROBOTO,
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: color,
    );
  }

  static const completeRegistrationTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ColorConstants.WHITE,
  );

  static const errorTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON_TRANSPARENT_80,
  );

  static const titlePromotionProductListTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.normal,
  );

  static const commonTextStyleWithNormalFontWeight = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.normal,
  );
  static const commonDarkTextStyleWithNormalFontWeight = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    color: ColorConstants.WHITE,
    fontWeight: FontWeight.normal,
  );

  static const commonTextStyleWithNormalFontWeight18 = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.normal,
  );

  static const cartTextStyle = const TextStyle(
    fontSize: 14,
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.bold,
  );

  static const myCartItemTextStyle = const TextStyle(
    fontSize: 14,
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.GRAY_3,
    fontWeight: FontWeight.w500,
  );

  static const myCartTotalRowTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 15,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w400,
  );

  static const checkoutTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.normal,
  );

  static const checkoutScreenTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 13,
    color: ColorConstants.CARBON,
  );

  static const commonTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );
  static const lightTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: ColorConstants.GRAY_7,
  );

  static const inputFieldLightTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );

  static const inputFieldDarkTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const successNoteTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const favoriteBrandTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.WHITE,
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  static const favoriteBrandTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.WHITE,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const brandNewCollectionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const newCollectionFashionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.WHITE,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const newCollectionDescriptionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.WHITE,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  static const modernDescriptionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const modernExceptionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON,
    fontSize: 33,
    fontWeight: FontWeight.w400,
  );

  static const unisexTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: ColorConstants.BLACK,
  );

  static const unisexDescriptionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w300,
    fontSize: 15,
    color: ColorConstants.BLACK,
  );

  static const productSizeTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON_TRANSPARENT_80,
    fontWeight: FontWeight.w900,
    fontSize: 10,
  );

  static const productPriceTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 12,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w400,
  );

  static const productTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorConstants.CARBON,
  );

  static const productItemCountTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    color: ColorConstants.BUTTON_COLOR,
    fontWeight: FontWeight.w500,
  );

  static const totalLabelTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON_TRANSPARENT_BB,
  );

  static const productDetailsTitleTextStyle = const TextStyle(
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w700,
    fontSize: 22,
  );

/*********************************/
//  static const saveButtonTextStyle = const TextStyle(
//    color: ColorConstants.CARBON,
//    fontFamily: FontFamily.ROBOTO,
//    fontWeight: FontWeight.w500,
//    fontSize: 16,
//  );

//  static const priceLayoutTextStyle = const TextStyle(
//    color: ColorConstants.CARBON,
//    fontFamily: FontFamily.ROBOTO,
//    fontWeight: FontWeight.w700,
//    fontSize: 16,
//  );

  static const textStyleWithWeightW700 = const TextStyle(
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  ///****/
//  static const productDetailsLabelTextStyle = const TextStyle(
//    color: ColorConstants.CARBON,
//    fontFamily: FontFamily.ROBOTO,
//    fontWeight: FontWeight.w500,
//    fontSize: 16,
//  );

  static const similarProductsLabelTextStyle = const TextStyle(
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  static const similarProductsItemLabelTextStyle = const TextStyle(
    color: ColorConstants.CARBON_TRANSPARENT_80,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static const welcomeTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.WHITE,
    fontWeight: FontWeight.w400,
    fontSize: 30,
  );

  static const loginButtonTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.WHITE,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static const shopForTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: ColorConstants.CARBON,
  );

  static const categoryGridTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: ColorConstants.CARBON,
  );

  static const searchTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: Colors.grey,
    fontSize: 23,
    fontWeight: FontWeight.normal,
  );

  static const recentSearchTextStyle = const TextStyle(
    fontSize: 18,
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );

  static const categoryListTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorConstants.CARBON,
  );

  static const searchByCategoryTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.bold,
    fontSize: 21.0,
    color: ColorConstants.CARBON,
  );
  static const reviewTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 20,
    color: ColorConstants.COLOR_REVIEW_LIST,
  );

  static const reviewNameTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: ColorConstants.CARBON,
  );

  static const bestSellerTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorConstants.CARBON,
  );

//  static const viewAllTextStyle = const TextStyle(
//      fontFamily: FontFamily.ROBOTO,
//      fontSize: 14,
//      fontWeight: FontWeight.w500,
//      color: ColorConstants.CARBON);

  static const emailTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: ColorConstants.GRAY_5,
  );

  static const profileItemTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.BLACK,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const applyButtonTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: ColorConstants.WHITE,
  );

  static const trendingTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: ColorConstants.CARBON,
    letterSpacing: 1,
  );

  static const topThisWeekTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: ColorConstants.GRAY_5,
  );

  static const appTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: ColorConstants.WHITE,
  );

  static const appTitleBoldTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 36,
    fontWeight: FontWeight.w800,
    color: ColorConstants.CARBON,
  );

  static const boldTextStyleWithSize16 = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ColorConstants.CARBON,
  );

  static const viewAllButtonTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: ColorConstants.CARBON,
  );

  static const homeSearchTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: ColorConstants.CARBON,
  );

  static const featuredTypeTitleBoldTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
  );

  static const boldTextWithSize20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
  );

  static const discoverNewStyleTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
  );

  static const modernEssentialsTextStyle = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
  );

  static const newlyArrivedViewAllBtnTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: ColorConstants.CARBON,
    fontFamily: FontFamily.ROBOTO,
  );



  static const nameTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: ColorConstants.CARBON,
  );

  static const cartDetailsAmountTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 14,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w400,
  );

  static const cartDetailsSizeTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON_TRANSPARENT_80,
    fontWeight: FontWeight.w900,
    fontSize: 12,
  );

  static const cartDetailsIconTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    color: ColorConstants.BUTTON_COLOR,
    fontWeight: FontWeight.w400,
  );

  static const checkOutProductNameTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: ColorConstants.CARBON,
  );

  static const checkOutAmountTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 12,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w400,
  );

  static const checkOutSizeTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    color: ColorConstants.CARBON_TRANSPARENT_80,
    fontWeight: FontWeight.w900,
    fontSize: 10,
  );

  static const checkOutItemCountTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    color: ColorConstants.CARBON,
    fontWeight: FontWeight.w400,
  );

  static const brandNameTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ColorConstants.CARBON_TRANSPARENT_80,
  );

  static const sliderDescriptionTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 16,
    color: ColorConstants.WHITE,
    fontWeight: FontWeight.normal,
  );
  static const sliderTitleTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: ColorConstants.WHITE,
  );
  static const promotionListLinkTextStyle = const TextStyle(
    fontFamily: FontFamily.ROBOTO,
    fontSize: 18,
    color: ColorConstants.WHITE,
    fontWeight: FontWeight.normal,
  );
}
