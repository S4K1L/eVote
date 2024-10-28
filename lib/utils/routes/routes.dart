import 'package:evote/utils/widgets/admin_bottom_bar.dart';
import 'package:evote/utils/widgets/user_bottom_bar.dart';
import 'package:evote/view/user_panel/login/login.dart';
import 'package:get/get.dart';

class RoutesPath {
  static String login = '/login';
  static String signUp = '/signUp';
  static String userBottomBar = '/userBottomBar';
  static String adminBottomBar = '/adminBottomBar';
  static String home = '/home';
  static String voting = '/voting';
  static String results = '/results';
  static String profile = '/profile';
}

final pages = [
  GetPage(
    name: RoutesPath.login,
    page: ()=> Login(),
    transition: Transition.rightToLeft
  ),
  GetPage(
    name: RoutesPath.signUp,
    page: ()=> Login(),
    transition: Transition.leftToRight
  ),
  GetPage(
    name: RoutesPath.adminBottomBar,
    page: ()=> const AdminBottomBar(),
    transition: Transition.leftToRight
  ),
  GetPage(
    name: RoutesPath.userBottomBar,
    page: ()=> const UserBottomBar(),
    transition: Transition.leftToRight
  ),
  GetPage(
    name: RoutesPath.home,
    page: ()=> Login(),
    transition: Transition.rightToLeft
  ),
];
