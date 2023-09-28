import 'package:evoy_test/extension/global_extensions.dart';

class FieldValidator {
  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "email_is_required".L();
    }
    if (!RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(value)) {
      return "enter_a_valid_email".L();
    }
    return null;
  }

  static String? validatePasswordSignup(String? value) {
    if (value!.isEmpty) {
      return "please_enter_your_password".L();
    }
    if (value.length < 6) {
      return "password_limit".L();
    }
    if (!RegExp(r"^(?=.*?[a-zA-Z])").hasMatch(value)) {
      return "password_should_include_1_alphabet".L();
    }
    if (!RegExp(r"^(?=.*?[0-9])").hasMatch(value)) {
      return "password_should_include_1_number".L();
    }
    if (!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(value.trim())) {
      return "password_should_1_special_character".L();
    }
    return null;
  }

  static String? validatePasswordMatch(String? value, String? pass2) {
    if (pass2!.isEmpty) {
      return "please_re_enter_your_password".L();
    }
    if (value != pass2) {
      return "password_does_not_match".L();
    }
    return null;
  }
}
