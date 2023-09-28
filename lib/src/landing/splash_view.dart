import 'package:evoy_test/resource/resources.dart';
import 'package:evoy_test/src/auth/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  static String route = "/splash_view";

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      initCallBack();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Container _buildBody() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(R.images.backgroundMap), fit: BoxFit.fill)),
      child: Container(
        color: R.colors.black.withOpacity(0.6),
        child: Image.asset(
          R.images.logo,
          scale: 4,
        ),
      ),
    );
  }

  void initCallBack() {
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(SignupView.route));
  }
}
