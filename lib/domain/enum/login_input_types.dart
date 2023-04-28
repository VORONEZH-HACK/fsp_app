import '../../generated/l10n.dart';

enum LoginInputTypes {
  name,
  surname,
  patronymic,
  education,
  email,
  password;

  String getTitle(S localization) {
    switch (this) {
      case LoginInputTypes.name:
        return localization.login_name;
      case LoginInputTypes.surname:
        return localization.login_surname;
      case LoginInputTypes.patronymic:
        return localization.login_patronymic;
      case LoginInputTypes.education:
        return localization.login_edu;
      case LoginInputTypes.email:
        return localization.login_email;
      case LoginInputTypes.password:
        return localization.login_password;
    }
  }
}
