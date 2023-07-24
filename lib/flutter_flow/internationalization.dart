import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'lx4o0loc': {
      'en': 'Search for products',
      'fr': '',
    },
    'uoxrl6zw': {
      'en': 'Shop by category',
      'fr': '',
    },
    'dl27adjv': {
      'en': 'Home',
      'fr': '',
    },
  },
  // SearchPage
  {
    '7qjwwj32': {
      'en': 'Recent Searches',
      'fr': '',
    },
    'nlsahiyo': {
      'en': ' - your go to items.',
      'fr': '',
    },
    '7phblw7k': {
      'en': 'Item name',
      'fr': '',
    },
    'mu9n00qf': {
      'en': 'Item name',
      'fr': '',
    },
    '3ahedtpm': {
      'en': 'Item name',
      'fr': '',
    },
    '6ajh3c5i': {
      'en': 'Trending Searches',
      'fr': '',
    },
    'z2axd7vu': {
      'en': 'Item name',
      'fr': '',
    },
    'fvem0ze4': {
      'en': 'Item name',
      'fr': '',
    },
    '55x5a6uz': {
      'en': 'Popular Items',
      'fr': '',
    },
    '5smyqrod': {
      'en': 'Search for farm products',
      'fr': '',
    },
    '8a90co07': {
      'en': 'Search',
      'fr': '',
    },
  },
  // AreaUnservicablePage
  {
    '60bd7dx4': {
      'en': 'In Progress',
      'fr': '',
    },
    'oi6g65jo': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Login
  {
    'wk5gal94': {
      'en': 'Welcome Back',
      'fr': '',
    },
    '8497pfym': {
      'en': 'Fill out the information below in order to access your account.',
      'fr': '',
    },
    'slw097t5': {
      'en': 'Email',
      'fr': '',
    },
    'wdgvkojz': {
      'en': 'Password',
      'fr': '',
    },
    'eolf8dg9': {
      'en': 'Sign In',
      'fr': '',
    },
    '0robtpjy': {
      'en': 'Or sign in with',
      'fr': '',
    },
    'ha8i09sv': {
      'en': 'Continue with Google',
      'fr': '',
    },
    '9pf4cd51': {
      'en': 'Continue with Apple',
      'fr': '',
    },
    '8f3tycrf': {
      'en': 'Don\'t have an account?  ',
      'fr': '',
    },
    'r5g7hnl2': {
      'en': 'Sign Up here',
      'fr': '',
    },
    'i7bp21h2': {
      'en': 'Home',
      'fr': '',
    },
  },
  // CreateAccount
  {
    'ux9p3gc4': {
      'en': 'Get Started',
      'fr': '',
    },
    '08i014oj': {
      'en': 'Let\'s get started by filling out the form below.',
      'fr': '',
    },
    'q8yba2wb': {
      'en': 'Email',
      'fr': '',
    },
    'f88znip9': {
      'en': 'Password',
      'fr': '',
    },
    'm7dunowh': {
      'en': 'Password',
      'fr': '',
    },
    '5mfzeezi': {
      'en': 'Create Account',
      'fr': '',
    },
    'ez96jcpw': {
      'en': 'Or sign up with',
      'fr': '',
    },
    '359r9o6s': {
      'en': 'Continue with Google',
      'fr': '',
    },
    'xlbm2rdh': {
      'en': 'Continue with Apple',
      'fr': '',
    },
    'b7pep8yh': {
      'en': 'Already have an account?  ',
      'fr': '',
    },
    'me1urgki': {
      'en': 'Login here',
      'fr': '',
    },
    'i82rsat3': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Onboarding
  {
    'jg4y9g18': {
      'en': 'Welcome!',
      'fr': '',
    },
    'tcbd4r2f': {
      'en':
          'Hello! Place an order for any poultry products and get them delivered to you.',
      'fr': '',
    },
    'mltgz1m9': {
      'en': 'Continue as Guest',
      'fr': '',
    },
    '69324dnh': {
      'en': 'My Account',
      'fr': '',
    },
    'hlqom2zy': {
      'en': 'Home',
      'fr': '',
    },
  },
  // productList
  {
    'ajxjm3xs': {
      'en': 'Search the shop',
      'fr': '',
    },
    '82o5pwzi': {
      'en': 'Available items',
      'fr': '',
    },
    'oznvzgf0': {
      'en': 'Shop',
      'fr': '',
    },
  },
  // productDetail
  {
    'qwr6oia6': {
      'en': '1 Kg',
      'fr': '',
    },
    '7zdxenvv': {
      'en': '2 Kg',
      'fr': '',
    },
    'ir8nf61k': {
      'en': '3 Kg',
      'fr': '',
    },
    'l1j3mcl7': {
      'en': '4 Kg',
      'fr': '',
    },
    '8k5cf866': {
      'en': '5 Kg',
      'fr': '',
    },
    'i4ks7ste': {
      'en': 'Choose the Weight',
      'fr': '',
    },
    '4m4i0lf8': {
      'en': 'Add to Cart',
      'fr': '',
    },
    'rgb5w3j8': {
      'en': 'Home',
      'fr': '',
    },
  },
  // CartView
  {
    '6wdo5f9q': {
      'en': 'Your Cart',
      'fr': '',
    },
    'afjce8iv': {
      'en': 'Below is the list of items in your cart.',
      'fr': '',
    },
    '0l2bhojk': {
      'en': 'Quantity: ',
      'fr': '',
    },
    'mfgc4fao': {
      'en': 'Remove',
      'fr': '',
    },
    'bj0nkrzg': {
      'en': 'Order Summary',
      'fr': '',
    },
    'np2e82i3': {
      'en': 'Here\'s a summary of your cart.',
      'fr': '',
    },
    'ul5kbz37': {
      'en': 'Price Breakdown',
      'fr': '',
    },
    '3cn2hpal': {
      'en': 'Base Price',
      'fr': '',
    },
    'uu8x2j0a': {
      'en': 'FCFA 156.00',
      'fr': '',
    },
    'tvgw9y6h': {
      'en': 'Processing Fee',
      'fr': '',
    },
    'oaboc3bd': {
      'en': 'FCFA 24.20',
      'fr': '',
    },
    '2fq0t5ot': {
      'en': 'Delivery Fee',
      'fr': '',
    },
    'uxrf3vy1': {
      'en': 'FCFA 40.00',
      'fr': '',
    },
    'gy7prre9': {
      'en': 'Total',
      'fr': '',
    },
    'pe5mzqq4': {
      'en': 'FCFA 230.20',
      'fr': '',
    },
    '6mlj9abm': {
      'en': 'Proceed to Checkout',
      'fr': '',
    },
    'w6cwrqu1': {
      'en': 'Cart',
      'fr': '',
    },
  },
  // ProfilePage
  {
    '6ctp0b7n': {
      'en': 'Account',
      'fr': '',
    },
    '7cqkrvpq': {
      'en': 'Payment Options',
      'fr': '',
    },
    'kx3ynk6u': {
      'en': 'Country',
      'fr': '',
    },
    'xqh0z9m5': {
      'en': 'Notification Settings',
      'fr': '',
    },
    '6ioah8z4': {
      'en': 'Edit Profile',
      'fr': '',
    },
    'calrif6d': {
      'en': 'General',
      'fr': '',
    },
    'cgbxccdf': {
      'en': 'Support',
      'fr': '',
    },
    'ght818k8': {
      'en': 'Terms of Service',
      'fr': '',
    },
    'ie1xqh4y': {
      'en': 'Log Out',
      'fr': '',
    },
    '2cbse7b4': {
      'en': 'Profile',
      'fr': '',
    },
    'hsksciun': {
      'en': 'Account',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'hny56da8': {
      'en': 'Input Label',
      'fr': '',
    },
    '21htve3o': {
      'en': 'Placeholder text',
      'fr': '',
    },
    'uug2bisb': {
      'en': 'Text value',
      'fr': '',
    },
    'h2cc0e4u': {
      'en': 'Select Location',
      'fr': '',
    },
    '2h5swger': {
      'en': 'Title',
      'fr': '',
    },
    'wkyu6gxv': {
      'en': 'Subtitle goes here...',
      'fr': '',
    },
    '60p88prc': {
      'en': 'Title',
      'fr': '',
    },
    'kghgs6vc': {
      'en': 'Subtitle goes here...',
      'fr': '',
    },
    'xf7js9od': {
      'en': '1',
      'fr': '',
    },
    'ew6rwyu3': {
      'en': '20%',
      'fr': '',
    },
    'asud4xzh': {
      'en': 'Permit AACE farms to deliver to your location',
      'fr': '',
    },
    'tpisaxzd': {
      'en': 'Allow AACE Farms to tell you when your order is ready',
      'fr': '',
    },
    '1r5txo4i': {
      'en': 'Allow AACE Farms to recognise your voice',
      'fr': '',
    },
    '9qykd23j': {
      'en': '',
      'fr': '',
    },
    '6801oze9': {
      'en': '',
      'fr': '',
    },
    'jd8g2p7b': {
      'en': '',
      'fr': '',
    },
    'vjzuqi8h': {
      'en': '',
      'fr': '',
    },
    'aj3b3ca4': {
      'en': '',
      'fr': '',
    },
    '85i1ohaz': {
      'en': '',
      'fr': '',
    },
    'hazzmgoi': {
      'en': '',
      'fr': '',
    },
    'ytm9hrab': {
      'en': '',
      'fr': '',
    },
    'u610mj2q': {
      'en': '',
      'fr': '',
    },
    '87ko89f3': {
      'en': '',
      'fr': '',
    },
    'gzo5ogdk': {
      'en': '',
      'fr': '',
    },
    'gtukxhi2': {
      'en': '',
      'fr': '',
    },
    'wko51zm0': {
      'en': '',
      'fr': '',
    },
    '5y2w5pkc': {
      'en': '',
      'fr': '',
    },
    '436r1ri0': {
      'en': '',
      'fr': '',
    },
    'cttjdr9a': {
      'en': '',
      'fr': '',
    },
    'me76lw00': {
      'en': '',
      'fr': '',
    },
    '2679cadw': {
      'en': '',
      'fr': '',
    },
    'k0f6lhx8': {
      'en': '',
      'fr': '',
    },
    'p12x86ex': {
      'en': '',
      'fr': '',
    },
    '2wgzen2g': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
