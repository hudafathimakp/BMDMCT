import 'package:get/get.dart';

import '../modules/collect_cover/bindings/collect_cover_binding.dart';
import '../modules/collect_cover/views/collect_cover_view.dart';
import '../modules/distribute_cover/bindings/distribute_cover_binding.dart';
import '../modules/distribute_cover/views/distribute_cover_view.dart';
import '../modules/distribution_details/bindings/distribution_details_binding.dart';
import '../modules/distribution_details/views/distribution_details_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/otp_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DISTRIBUTE_COVER,
      page: () => const DistributeCoverView(),
      binding: DistributeCoverBinding(),
    ),
    GetPage(
      name: _Paths.COLLECT_COVER,
      page: () => const CollectCoverView(),
      binding: CollectCoverBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.DISTRIBUTION_DETAILS,
      page: () => const DistributionDetailsView(),
      binding: DistributionDetailsBinding(),
    ),
  ];
}
