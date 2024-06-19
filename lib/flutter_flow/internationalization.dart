import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'mr'];

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
    String? mrText = '',
  }) =>
      [enText, mrText][languageIndex] ?? '';

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
  // Login
  {
    '7e5gk6y8': {
      'en': 'Sign In',
      'mr': '',
    },
    'vctqy030': {
      'en': 'Use the account below to sign in.',
      'mr': '',
    },
    'ozh56z3n': {
      'en': 'Email',
      'mr': '',
    },
    '35wr54fv': {
      'en': 'Password',
      'mr': '',
    },
    'd90d0xv2': {
      'en': 'Sign In',
      'mr': '',
    },
    '900tlhja': {
      'en': 'Forgot Password',
      'mr': '',
    },
    'sy2xx25w': {
      'en': 'Create New Account',
      'mr': '',
    },
    '4wrgydnv': {
      'en': 'Continue with Google',
      'mr': '',
    },
    'y7tx6f1j': {
      'en': 'Continue with Apple',
      'mr': '',
    },
    'rkxc4fnt': {
      'en': 'Guest Mode',
      'mr': '',
    },
    'kg5d3oii': {
      'en': 'Home',
      'mr': '',
    },
  },
  // LandingPage
  {
    '5gblhrkr': {
      'en': 'Level Checks',
      'mr': '',
    },
    'o1odzyqw': {
      'en': 'Level Checks',
      'mr': '',
    },
    'knxiivz3': {
      'en': 'Power Usage',
      'mr': '',
    },
    'j6by4z75': {
      'en': 'Environment',
      'mr': '',
    },
    'ecr5sj8j': {
      'en': 'Environment',
      'mr': '',
    },
    'ki9lxhmg': {
      'en': 'Home',
      'mr': '',
    },
  },
  // ConncectedDvcs
  {
    '8cy1u7lq': {
      'en': 'Lamp',
      'mr': '',
    },
    'lsf09h5k': {
      'en': 'Exhaust  ',
      'mr': '',
    },
    'a97b4uro': {
      'en': 'Feeder',
      'mr': '',
    },
    'iv9k7grn': {
      'en': 'Water\nSupply',
      'mr': '',
    },
    'vt31u9eh': {
      'en': 'Your Connected Devices',
      'mr': '',
    },
    'swgfed0x': {
      'en': 'Hello World',
      'mr': '',
    },
    '73xxymak': {
      'en': 'Hello World',
      'mr': '',
    },
    '8beq2tn0': {
      'en': 'Home',
      'mr': '',
    },
  },
  // ProfileSettings
  {
    'c9bujq5u': {
      'en': 'Profile',
      'mr': '',
    },
    '79ot3d4i': {
      'en': 'Vivek',
      'mr': '',
    },
    'l1asc325': {
      'en': 'vivek.dev@gmail.com',
      'mr': '',
    },
    'krwmpkgd': {
      'en': 'Switch to Dark Mode',
      'mr': '',
    },
    'cva93klk': {
      'en': 'Switch to Light Mode',
      'mr': '',
    },
    'b0kbfdfl': {
      'en': 'Account Settings',
      'mr': '',
    },
    'szbasoqt': {
      'en': 'Change Password',
      'mr': '',
    },
    'sefk2035': {
      'en': 'Edit Profile (Under Development)',
      'mr': '',
    },
    'ttd5srt1': {
      'en': 'Log Out',
      'mr': '',
    },
    '3k4ht8x4': {
      'en': '__',
      'mr': '',
    },
  },
  // forgotpassword
  {
    '42i59sxb': {
      'en': 'Back',
      'mr': '',
    },
    '34hmabun': {
      'en': 'Forgot Password',
      'mr': '',
    },
    '5aupm3b4': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'mr': '',
    },
    'n6rtz1r5': {
      'en': 'Your email address...',
      'mr': '',
    },
    'uf05q8h6': {
      'en': 'Enter your email...',
      'mr': '',
    },
    '85g8ki4k': {
      'en': 'Send Link',
      'mr': '',
    },
    'fgsbopjp': {
      'en': 'Home',
      'mr': '',
    },
  },
  // Settings1Notifications
  {
    '9b6pi6y9': {
      'en': 'Settings Page',
      'mr': '',
    },
    'zbx9useb': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'mr': '',
    },
    'yht7rtqb': {
      'en': 'Push Notifications',
      'mr': '',
    },
    'n2gk3lmg': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'mr': '',
    },
    'bja67pdx': {
      'en': 'Email Notifications',
      'mr': '',
    },
    'jgvkicvj': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'mr': '',
    },
    '42ir9jd5': {
      'en': 'Location Services',
      'mr': '',
    },
    'pd9uheh4': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'mr': '',
    },
    'wyozjqap': {
      'en': 'Change Changes',
      'mr': '',
    },
  },
  // CreateAccount1
  {
    'f78ksg9e': {
      'en': 'Create an account',
      'mr': '',
    },
    'mez8gmdh': {
      'en': 'Let\'s get started by filling out the form below.',
      'mr': '',
    },
    'lkr94u01': {
      'en': 'Email',
      'mr': '',
    },
    'w2y1nxik': {
      'en': 'Password',
      'mr': '',
    },
    'jon94t99': {
      'en': 'Confirm Password',
      'mr': '',
    },
    '1dh2eyw6': {
      'en': 'Create Account',
      'mr': '',
    },
    'lnibiz72': {
      'en': 'Already have an account? ',
      'mr': '',
    },
    '3wdgpsyn': {
      'en': 'Sign In here',
      'mr': '',
    },
    'pwbgm61l': {
      'en': 'Home',
      'mr': '',
    },
  },
  // onb
  {
    'dh05wf9k': {
      'en': 'EGGcellent',
      'mr': '',
    },
    'a8kw4z8x': {
      'en': 'See the conditions of your barn from your device!!',
      'mr': '',
    },
    '2zxul7lu': {
      'en': 'EGGcellent',
      'mr': '',
    },
    'sqf4ymvg': {
      'en': 'Control your devices just from tip of your fingers 😊',
      'mr': '',
    },
    'rue01cz8': {
      'en': 'EGGcellent',
      'mr': '',
    },
    '13j7kjum': {
      'en': 'Made in India 🇮🇳',
      'mr': '',
    },
    'xd0zexqa': {
      'en': 'Next',
      'mr': '',
    },
    'r1f6060u': {
      'en': 'Skip',
      'mr': '',
    },
    'wdayr1ow': {
      'en': 'Home',
      'mr': '',
    },
  },
  // ElectricUsageComponent
  {
    '14lqa9co': {
      'en': 'Power ',
      'mr': '',
    },
    '5drd0p5k': {
      'en': '55 kWh',
      'mr': '',
    },
    '3iw3d6to': {
      'en': '(Under dev)',
      'mr': '',
    },
    'zwnmie5j': {
      'en': 'Cost',
      'mr': '',
    },
    'bbyqus5g': {
      'en': '₹50',
      'mr': '',
    },
    'nq1y1wl5': {
      'en': '(Under Dev.)',
      'mr': '',
    },
  },
  // TemComponent
  {
    'dt4wf2vz': {
      'en': 'Temperature',
      'mr': '',
    },
    'lfg26vah': {
      'en': '°C',
      'mr': '',
    },
    '579diojy': {
      'en': 'Humidity',
      'mr': '',
    },
    'eaqs5w06': {
      'en': '%',
      'mr': '',
    },
  },
  // GasComp
  {
    'iquh6yan': {
      'en': 'Gas Level',
      'mr': '',
    },
    'k1yvadbt': {
      'en': 'Water Level',
      'mr': '',
    },
    'g4511kl5': {
      'en': '0',
      'mr': '',
    },
  },
  // nav
  {
    'hqj20knu': {
      'en': 'Home',
      'mr': '',
    },
    'j2h6l887': {
      'en': 'Projects',
      'mr': '',
    },
    '118molxa': {
      'en': 'Andrew D.',
      'mr': '',
    },
    '10wb3pp9': {
      'en': '@andrewd',
      'mr': '',
    },
  },
  // Miscellaneous
  {
    '5tznee2v': {
      'en': '',
      'mr': '',
    },
    'c7tihpum': {
      'en': '',
      'mr': '',
    },
    '7i7dl6v4': {
      'en': '',
      'mr': '',
    },
    'ck1yq5uf': {
      'en': '',
      'mr': '',
    },
    'w0l0x88w': {
      'en': '',
      'mr': '',
    },
    'ikd0oj5u': {
      'en': '',
      'mr': '',
    },
    '1t8iwxmw': {
      'en': '',
      'mr': '',
    },
    'df48fvyb': {
      'en': '',
      'mr': '',
    },
    'gomje3yg': {
      'en': '',
      'mr': '',
    },
    'ygatrosn': {
      'en': '',
      'mr': '',
    },
    'x9ck6vo4': {
      'en': '',
      'mr': '',
    },
    'i8zhfg62': {
      'en': '',
      'mr': '',
    },
    'e72sj2n4': {
      'en': '',
      'mr': '',
    },
    'lc44gbvu': {
      'en': '',
      'mr': '',
    },
    'sv3sy83i': {
      'en': '',
      'mr': '',
    },
    '1fg5mcct': {
      'en': '',
      'mr': '',
    },
    'wv7o26va': {
      'en': '',
      'mr': '',
    },
    'uv3vrvws': {
      'en': '',
      'mr': '',
    },
    'usuviy6i': {
      'en': '',
      'mr': '',
    },
    '17s3yufx': {
      'en': '',
      'mr': '',
    },
    'mubvlje7': {
      'en': '',
      'mr': '',
    },
    '1hob7sap': {
      'en': '',
      'mr': '',
    },
    'x6f9i8dm': {
      'en': '',
      'mr': '',
    },
    'vb72v0i7': {
      'en': '',
      'mr': '',
    },
    'vj8qyfl7': {
      'en': '',
      'mr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
