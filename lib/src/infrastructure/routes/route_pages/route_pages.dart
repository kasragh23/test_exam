import 'package:get/get.dart';
import 'package:test_exam/src/pages/add_category/commons/add_category_binding.dart';
import 'package:test_exam/src/pages/add_category/view/add_category_page.dart';
import '../../../pages/category/commons/category_binding.dart';
import '../../../pages/category/view/category_page.dart';
import '../../../pages/login/commons/login_binding.dart';
import '../../../pages/login/view/login_page.dart';
import '../../../pages/register/commons/register_binding.dart';
import '../../../pages/register/view/register_page.dart';
import '../../../pages/splash/commons/splash_binding.dart';
import '../../../pages/splash/view/loading_page.dart';
import '../route_paths/route_paths.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RoutePaths.loading,
      page: () => const LoadingPage(),
      binding: SplashBinding(),
      children: [
        GetPage(
          name: RoutePaths.login,
          page: () => const LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: RoutePaths.register,
          page: () => const RegisterPage(),
          binding: RegisterBinding(),
        ),
      ],
    ),
    GetPage(
        name: RoutePaths.category,
        page: () => const CategoryPage(),
        binding: CategoryBinding(),
    ),
    GetPage(
      name: RoutePaths.addCategory,
      page: () => const AddCategoryPage(),
      binding: AddCategoryBinding(),
    ),
  ];
}
