import 'package:login_page_tutorial/pages/edit_profile_page.dart';
import 'package:login_page_tutorial/pages/home_page.dart';
import 'package:login_page_tutorial/pages/login_page.dart';
import 'package:login_page_tutorial/pages/main_page.dart';

class AppRoutes {
  
static final pages = {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
        '/edit_profile':(context) => const EditProfilePage(),
      };
  
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}