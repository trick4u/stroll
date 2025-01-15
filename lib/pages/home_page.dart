import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stroll/services/colors.dart';

import '../controller/navigation_controller.dart';

import '../services/scaling.dart';
import '../widgets/custom_bottom_bar.dart';

class HomePage extends GetView<NavigationController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScaleUtil.init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.darkColor,
        body: Obx(() => controller.buildBody(context)),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
