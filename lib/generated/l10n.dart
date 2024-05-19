// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome in Auro`
  String get welcome {
    return Intl.message(
      'Welcome in Auro',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Please choose the language that suits your country and region for a better experience within the Auro application`
  String get chooselanguage {
    return Intl.message(
      'Please choose the language that suits your country and region for a better experience within the Auro application',
      name: 'chooselanguage',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Select country`
  String get selectCountry {
    return Intl.message(
      'Select country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get selectedLanguage {
    return Intl.message(
      'English',
      name: 'selectedLanguage',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continueButtom {
    return Intl.message(
      'continue',
      name: 'continueButtom',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skipButtom {
    return Intl.message(
      'Skip',
      name: 'skipButtom',
      desc: '',
      args: [],
    );
  }

  /// `Discounts above discounts`
  String get discounts {
    return Intl.message(
      'Discounts above discounts',
      name: 'discounts',
      desc: '',
      args: [],
    );
  }

  /// `Log in to follow up and get our best offers and discounts`
  String get signInWelcomeMessage {
    return Intl.message(
      'Log in to follow up and get our best offers and discounts',
      name: 'signInWelcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phoner Number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter your phoner Number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password ?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Dont have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Dont have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter all the required information to create a new account`
  String get enterAlldataRegistiration {
    return Intl.message(
      'Please enter all the required information to create a new account',
      name: 'enterAlldataRegistiration',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation`
  String get passwordConfirmation {
    return Intl.message(
      'Password Confirmation',
      name: 'passwordConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `New Register`
  String get newAccount {
    return Intl.message(
      'New Register',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the phone number or email registered with us to receive the verification code`
  String get messageForOTP {
    return Intl.message(
      'Please enter the phone number or email registered with us to receive the verification code',
      name: 'messageForOTP',
      desc: '',
      args: [],
    );
  }

  /// `Email Address or Phone Number`
  String get emailorphone {
    return Intl.message(
      'Email Address or Phone Number',
      name: 'emailorphone',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Remembered Your Password?`
  String get rememberPassword {
    return Intl.message(
      'Remembered Your Password?',
      name: 'rememberPassword',
      desc: '',
      args: [],
    );
  }

  /// `Back to SignIn`
  String get backToSignIn {
    return Intl.message(
      'Back to SignIn',
      name: 'backToSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get verificationcode {
    return Intl.message(
      'Verification Code',
      name: 'verificationcode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the activation code sent to the number +966 *** *** **63 to create a new password`
  String get verificationMessage {
    return Intl.message(
      'Please enter the activation code sent to the number +966 *** *** **63 to create a new password',
      name: 'verificationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the code?`
  String get didnotRecive {
    return Intl.message(
      'Didn\'t receive the code?',
      name: 'didnotRecive',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get createNewPassword {
    return Intl.message(
      'Create New Password',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please use a new password and avoid using previous passwords to ensure your protection.`
  String get createNewPasswordMessage {
    return Intl.message(
      'Please use a new password and avoid using previous passwords to ensure your protection.',
      name: 'createNewPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
