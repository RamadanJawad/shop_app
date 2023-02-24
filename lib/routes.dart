import 'package:get/get.dart';
import 'package:shop_app/core/constant/route.dart';
import 'package:shop_app/view/screen/auth/forget_pass_screen.dart';
import 'package:shop_app/view/screen/auth/login_screen.dart';
import 'package:shop_app/view/screen/auth/register_screen.dart';
import 'package:shop_app/view/screen/auth/verification_screen.dart';
import 'package:shop_app/view/screen/home/cart_screen.dart';
import 'package:shop_app/view/screen/home/favorite_screen.dart';
import 'package:shop_app/view/screen/home/home_screen.dart';
import 'package:shop_app/view/screen/home/main_screen.dart';
import 'package:shop_app/view/screen/home/profile_screen.dart';
import 'package:shop_app/view/screen/utils/onboarding_screen.dart';
import 'package:shop_app/view/screen/utils/payment_screen.dart';
import 'package:shop_app/view/screen/utils/setting_screen.dart';
import 'package:shop_app/view/screen/utils/splash_screen.dart';
import 'package:shop_app/view/widget/home/drawer.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: AppRoute.onBoardingScreen,
    page: () => const OnBoardingScreen(),
  ),
  GetPage(
    name: AppRoute.loginScreen,
    page: () => const LoginScreen(),
  ),
  GetPage(name: AppRoute.registerScreen, page: () => const RegisterScreen()),
  GetPage(
      name: AppRoute.forgetPasswordScreen,
      page: () => const ForgetPassScreen()),
  GetPage(name: AppRoute.homeScreen, page: () => const HomeScreen()),
  GetPage(
      name: AppRoute.verifyCodeScreen, page: () => const VerificationScreen()),
  GetPage(name: AppRoute.mainScreen, page: () => const MainScreen()),
  GetPage(name: AppRoute.drawerScreen, page: () => const DrawerScreen()),
  GetPage(name: AppRoute.profileScreen, page: () => const ProfileScreen()),
  GetPage(name: AppRoute.cartScreen, page: () => const CartScreen()),
  GetPage(name: AppRoute.favoriteScreen, page: () => const FavoriteScreen()),
  GetPage(name: AppRoute.paymentScreen, page: () => const PaymentScreen()),
  GetPage(name: AppRoute.settingScreen, page: () => const SettingScreen()),
  // GetPage(
  //     name: AppRoute.resetPasswordScreen, page: () => const ResetPassword()),
  // GetPage(
  //     name: AppRoute.successPasswordScreen, page: () => SuccessResetPassword()),
];
