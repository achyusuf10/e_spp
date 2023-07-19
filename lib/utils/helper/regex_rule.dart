import 'package:e_spp/app/global_models/regex_validadion.dart';

class RegexRule {
  static RegexValidation get numberValidationRule => RegexValidation(
        regex: r'^[0-9]*$',
        errorMesssage: 'Harus angka',
      );
  static RegexValidation get emailValidationRule => RegexValidation(
        regex:
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
        errorMesssage: 'Email tidak valid',
      );

  static RegexValidation get emptyValidationRule => RegexValidation(
        regex: r'^(?!\s*$).+',
        errorMesssage: 'Wajib diisi',
      );
}
