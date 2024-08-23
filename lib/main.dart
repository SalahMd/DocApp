import 'package:docdoc/core/routing/app_routing.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/services/services.dart';
import 'package:docdoc/core/theming/app_theme.dart';
import 'package:docdoc/core/theming/dark_mode.dart';
import 'package:docdoc/view/screens/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
   WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp(appRouter: AppRouter()));

}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    DarkModeImpl themeController = DarkModeImpl();

    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: themeController.themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        // theme: ThemeData(
        //   primaryColor: LightAppColors.primaryColor,
        //   useMaterial3: true,
        // ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
        home: OnboardingScreen(),
      ),
    );
  }
}
