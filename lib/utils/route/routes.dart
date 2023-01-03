import 'package:flutter/material.dart';
import 'package:modflutterapp/views/home_screen.dart';
import 'package:modflutterapp/views/login_screen.dart';
import 'package:modflutterapp/views/my_ads_screen.dart';
import 'package:modflutterapp/views/my_ai_booking_screen.dart';
import 'package:modflutterapp/views/pd_check_screen.dart';
import 'package:modflutterapp/views/purchase_ads_cattle.dart';
import 'package:modflutterapp/views/purchase_ads_equipment.dart';
import 'package:modflutterapp/views/purchase_screens/purchase_fodder_screen.dart';
import 'package:modflutterapp/views/purchase_screens/purchase_silage_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_cattle_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_equipment_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_fodder_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_silage_screen.dart';
import 'package:modflutterapp/views/search_advertisement_screen.dart';
import 'package:modflutterapp/views/search_ai_screen.dart';
import 'package:modflutterapp/views/signup_screen.dart';
import 'package:modflutterapp/views/tem_screen.dart';

import '../../views/screen_not_found.dart';
import 'app_route_names.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      // case AppRouteName.spalsh:
      //     return _buildRoute(const SplashScreen(),settings);

      case AppRouteName.signin:
        return _buildRoute(const LoginScreen(), settings);

      case AppRouteName.signup:
        return _buildRoute(const SignUpScreen(), settings);

      case AppRouteName.home:
        return _buildRoute(const HomeScreen(), settings);

      case AppRouteName.searchads:
        return _buildRoute(const SearchAdvertisementScreen(), settings);

      case AppRouteName.myads:
        return _buildRoute(const MyAdvertisementScreen(), settings);

      case AppRouteName.salsesadsCattle:
        return _buildRoute(const SaleCattleScreen(), settings);

      case AppRouteName.salsesadsSilage:
        return _buildRoute(const SaleSilageScreen(), settings);

      case AppRouteName.salsesadsFodder:
        return _buildRoute(const SaleFodderScreen(), settings);

      case AppRouteName.salsesadsOther:
        return _buildRoute(const SaleEquipmentScreen(), settings);
      case AppRouteName.purchaseadsCattle:
        return _buildRoute(const PurchaseAdsCattle(), settings);

      case AppRouteName.purchaseadsSilage:
        return _buildRoute(const PurchaseSilageScreen(), settings);

      case AppRouteName.purchaseadsFodder:
        return _buildRoute(const PurchaseFodderScreen(), settings);

      case AppRouteName.purchaseadsOther:
        return _buildRoute(const PurchaseAdsEquipment(), settings);

      case AppRouteName.searchai:
        return _buildRoute(const SearchAiScreen(), settings);

      case AppRouteName.myaibooking:
        return _buildRoute(const MyAiBookingScreen(), settings);

      case AppRouteName.pdcheck:
        return _buildRoute(const PdCheckScreen(), settings);

      case AppRouteName.tem:
        return _buildRoute(const temscreen(), settings);

      default:
        return _buildRoute(const ScreenNotFound(), settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
