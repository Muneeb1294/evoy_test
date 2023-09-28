import 'package:evoy_test/extension/global_extensions.dart';
import 'package:evoy_test/resource/resources.dart';
import 'package:evoy_test/utils/app_button.dart';
import 'package:evoy_test/utils/field_validations.dart';
import 'package:evoy_test/utils/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignupView extends StatefulWidget {
  static String route = "/signup_view";

  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final emailController = TextEditingController();
  final repeatEmailController = TextEditingController();
  final paswwordController = TextEditingController();
  final emailFocus = FocusNode();
  final repeatEmailFocus = FocusNode();
  final paswwordFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _repeatEmailKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();
  bool isEmailValid = false;
  final socialList = [
    R.images.google,
    R.images.apple,
    R.images.facebook,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.grey4,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Padding _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(children: [
          _emailField(),
          _repeatEmailField(),
          _passwordField(),
          4.h.height,
          _declaration(),
          4.h.height,
          AppButton(
            buttonTitle: "create_account",
            onTap: () {},
            buttonWidth: 40.w,
          ),
          4.h.height,
          Text(
            "or_sign_up_with".L(),
            style: R.textStyles.barlowCondensed(
                fontWeight: FontWeight.w400,
                color: R.colors.grey2,
                fontSize: 14.sp),
          ),
          4.h.height,
          _buildSocialRow(),
          8.h.height,
          _signIn(),
        ]),
      ),
    );
  }

  RichText _signIn() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'you_already_have_an_account'.L(),
            style: R.textStyles.barlowCondensed(
                fontWeight: FontWeight.w400,
                color: R.colors.grey2,
                fontSize: 14.sp),
          ),
          TextSpan(
            text: 'sign_in'.L(),
            style: R.textStyles.barlowCondensed(
                fontWeight: FontWeight.w400,
                color: R.colors.primary,
                fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  Row _buildSocialRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          socialList.length, (index) => _socialContainer(socialList[index])),
    );
  }

  Container _socialContainer(String img) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: R.colors.grey3),
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          img,
          scale: 4,
        ),
      );

  RichText _declaration() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'by_creating_an_account_you_agree_to_the'.L(),
            style: R.textStyles.barlowCondensed(
                fontWeight: FontWeight.w400,
                color: R.colors.grey2,
                fontSize: 14.sp),
          ),
          TextSpan(
            text: 'terms_conditions'.L(),
            style: R.textStyles.barlowCondensed(
                fontWeight: FontWeight.w400,
                color: R.colors.primary,
                fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  Widget _repeatEmailField() {
    return GlobalWidgets.fieldContainer(
      focusNode: repeatEmailFocus,
      key: _repeatEmailKey,
      child: TextFormField(
        controller: repeatEmailController,
        focusNode: repeatEmailFocus,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        validator: (value) =>
            FieldValidator.validateEmailMatch(value, emailController.text),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (s) {
          setState(() {});
        },
        style: R.textStyles.barlowCondensed(
            color: R.colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1),
        decoration: R.decoration.fieldDecoration(
            labelText: "repeat_email",
            suffixIcon: _repeatEmailKey.currentState?.validate() ?? false
                ? Image.asset(R.images.checkmark, scale: 4)
                : null),
      ),
    );
  }

  Widget _emailField() {
    return GlobalWidgets.fieldContainer(
      focusNode: emailFocus,
      child: TextFormField(
        controller: emailController,
        focusNode: emailFocus,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        validator: FieldValidator.validateEmail,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (s) {
          setState(() {});
        },
        style: R.textStyles.barlowCondensed(
            color: R.colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1),
        decoration: R.decoration.fieldDecoration(
          labelText: "email",
        ),
      ),
    );
  }

  Widget _passwordField() {
    return GlobalWidgets.fieldContainer(
      focusNode: paswwordFocus,
      key: _passwordKey,
      child: TextFormField(
        controller: paswwordController,
        focusNode: paswwordFocus,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        obscureText: true,
        validator: FieldValidator.validatePasswordSignup,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (s) {
          setState(() {});
        },
        style: R.textStyles.barlowCondensed(
            color: R.colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1),
        decoration: R.decoration.fieldDecoration(
            labelText: "password",
            suffixIcon: _passwordKey.currentState?.validate() ?? false
                ? Image.asset(R.images.checkmark, scale: 4)
                : null),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: R.colors.grey4,
      elevation: 0,
      title: Text(
        "sign_up".L(),
        style: R.textStyles
            .barlowCondensed(
                fontWeight: FontWeight.w700,
                color: R.colors.white,
                fontSize: 30.sp)
            .copyWith(fontStyle: FontStyle.italic),
      ),
    );
  }
}
