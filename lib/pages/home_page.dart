import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navigation_controller.dart';

import '../services/scaling.dart';
import '../widgets/custom_bottom_bar.dart';


class HomePage extends GetView<NavigationController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScaleUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
       body: Obx(() => controller.buildBody(context)),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}





