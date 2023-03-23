
import 'package:get/get.dart';
import 'package:so_teach/controllers/quiz/quiz_question/quiz_questions_controller.dart';
import 'package:so_teach/views/auth/signup/sign_up_verification.dart';
import 'package:so_teach/views/calculating_score/calculatingscore_screen.dart';
import 'package:so_teach/views/calender/calenderscreen.dart';
import 'package:so_teach/views/level/level.dart';
import 'package:so_teach/views/quiz/quiz_screen.dart';
import 'package:so_teach/views/setting/setting.dart';

import '../bindings/auth/login_binding.dart';
import '../middlewears/auth/auth_middlewear.dart';

import '../views/auth/forogt_password/forgot_password.dart';
import '../views/auth/login/login.dart';
import '../views/auth/signup/sign_up.dart';
import '../views/auth/signup/signup2.dart';
import '../views/auth/signup_or_login.dart';

import '../views/chatscreen/chatscreen.dart';
import '../views/dashboard/dashboard_screen.dart';
import '../views/profile/profile_screen.dart';
import '../views/quiz/quiz_questions/quiz_question_screen.dart';
import '../views/setting/settingviewscreen_2.dart';
import '../views/splash/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static var initial = Routes.splash;
  static final routes = [
    // <------ Splash Routes --------->
    GetPage(
      name: Routes.splash,
      page: () =>  SplashScreen(),
    ),

    // <------ Signup or login Routes --------->
    GetPage(
      name: Routes.signupOrLogin,
      page: () => const SignupOrLogin(),
    ),
    // <------ Login Routes --------->
    GetPage(
      name: Routes.login,
      page: () => const Login(),
      // binding: LoginBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      //
      // ],

    ),

    //----------------------sign up screens route--------------

    GetPage(
      name: Routes.signUpScreen2,
      page: () => const SignUpScreen2(),
      // binding: SignUpScreen2Binding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      //
      // ],
    ),


    GetPage(
      name: Routes.signUp,
      page: () => const Signup(),
      // binding: SignUpBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      //
      // ],
    ),


    GetPage(
      name: Routes.signUpVerification,
      page: () => const SignUpVerificationScreen(),


    ),

    //---------------------Forgot Password screen ---------------

    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPassword(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

    //---------------------Quiz Screen Route---------------

    GetPage(
      name: Routes.quizScreen,
      page: () => const QuizScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

    GetPage(
      name: Routes.quizquestionScreen,
      page: () =>  QuizQuestionScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

    //--------------------Level Screen route-----------
    GetPage(
      name: Routes.levelScreen,
      page: () =>  LevelScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),


    //--------------------Dashboard Screen route-----------
    GetPage(
      name: Routes.dashboardScreen,
      page: () =>  DashboardScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

    //--------------------Setting Screen route-----------
    GetPage(
      name: Routes.settingsScreen,
      page: () =>  SettingViewScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

//--------------------Setting Screen 2 route-----------
    GetPage(
      name: Routes.settingsScreen2,
      page: () =>  SettingViewScreen2(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

      //--------------------Profile Screen Route-----------
  GetPage(
  name: Routes.profileScreen,
  page: () =>  const ProfileScreen(),
  // binding: ForgotPasswordBinding(),
  // middlewares: [
  //   RouteWelcomeMiddleware(priority: 1),

  //],
  ),


    //--------------------Chat Screen Route-----------
    GetPage(
      name: Routes.chatScreen,
      page: () =>  const ChatScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

    //-----------------------------Calender Screen routes-------------
    GetPage(
      name: Routes.calender,
      page: () =>  const CalenderScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),

    //-----------------------------Calculate Score Screen routes-------------
    GetPage(
      name: Routes.calculateScore,
      page: () =>  const CalculatingScoreScreen(),
      // binding: ForgotPasswordBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),

      //],
    ),






  ];
}
