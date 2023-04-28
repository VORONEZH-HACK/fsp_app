import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/attachment_data_model.dart';

class LoginDataController extends StateNotifier<AttachmentDataModel> {
  LoginDataController() : super(const AttachmentDataModel());

  void setEmail(String? email) => state = state.copyWith(email: email);

  void setName(String? name) => state = state.copyWith(name: name);

  void setSurname(String? surname) => state = state.copyWith(surname: surname);

  void setPatronymic(String? patronymic) =>
      state = state.copyWith(patronymic: patronymic);

  void setEducation(String? education) =>
      state = state.copyWith(education: education);

  void setPassword(String? password) =>
      state = state.copyWith(password: password);

  void setData(AttachmentDataModel model) => state = model;

  String? get email => state.email;

  String? get name => state.name;

  String? get surname => state.surname;

  String? get patronymic => state.patronymic;

  String? get education => state.education;

  String? get password => state.password;
}
