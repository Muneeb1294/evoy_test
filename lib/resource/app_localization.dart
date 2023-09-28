class LocalizationMap {
  static Map<String, String> get codesEN => {
    "sign_up":"Sign Up",
    "email_is_required":"Email is required",
    "enter_a_valid_email":"Enter a valid email",
    "please_enter_your_password":"Please enter your password",
    "password_limit":"Password should be at least 6 characters long",
    "password_should_include_1_alphabet":"Password should include 1 alphabet",
    "password_should_include_1_number":"Password should include 1 number",
    "password_should_1_special_character":"Password should include 1 special character",
    "please_enter_your_email":"Please enter your email",
    "email_does_not_match":"Email does not match",
    "email":"Email",
    "repeat_email":"Repeat Email",
    "password":"Password",
    "by_creating_an_account_you_agree_to_the":"By creating an account you agree to the\n",
    "terms_conditions":"Terms & Conditions",
    "create_account":"Create Account",
    "or_sign_up_with":"Or sign up with",
    "you_already_have_an_account":"You already have an account? ",
    "sign_in":"Sign in",
  };

  static String getValue(String key) {
    return codesEN[key] ?? "Text not found";
  }
}
