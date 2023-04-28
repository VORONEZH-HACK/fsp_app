import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/controller/login_data_controller.dart';
import '../../../domain/enum/login_input_types.dart';
import '../../../domain/enum/routes.dart';
import '../../../domain/providers.dart';
import '../../../generated/l10n.dart';
import '../../../utils/assets.dart';
import '../../../utils/extensions.dart';
import '../../event_list/widgets/no_glow_scroll_behavior.dart';
import '../agreement_checkbox.dart';
import '../attachment/widgets/attachment_send_button.dart';
import 'widgets/login_input.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({Key? key}) : super(key: key);

  final Map<LoginInputTypes, String> _inputs = {
    for (var value in LoginInputTypes.values) value: ''
  };

  void setControllerData(LoginInputTypes type, LoginDataController controller) {
    switch (type) {
      case LoginInputTypes.name:
        controller.setName(_inputs[type]);
        break;
      case LoginInputTypes.surname:
        controller.setSurname(_inputs[type]);
        break;
      case LoginInputTypes.patronymic:
        controller.setPatronymic(_inputs[type]);
        break;
      case LoginInputTypes.education:
        controller.setEducation(_inputs[type]);
        break;
      case LoginInputTypes.email:
        controller.setEmail(_inputs[type]);
        break;
      case LoginInputTypes.password:
        controller.setPassword(_inputs[type]);
        break;
    }
  }

  String? getInitialValue(
    S localization,
    LoginInputTypes type,
    LoginDataController controller,
  ) {
    switch (type) {
      case LoginInputTypes.name:
        return controller.name;
      case LoginInputTypes.surname:
        return controller.surname;
      case LoginInputTypes.patronymic:
        return controller.patronymic;
      case LoginInputTypes.education:
        return controller.education;
      case LoginInputTypes.email:
        return controller.email;
      case LoginInputTypes.password:
        return null;
    }
  }

  void _onChanged(String changed, LoginInputTypes type) {
    _inputs[type] = changed;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginController = ref.watch(loginDataControllerProvider);
    final controller = ref.watch(authControllerProvider);
    final notifier = ref.watch(authControllerProvider.notifier);

    return Scaffold(
      backgroundColor: context.colors.background,
      body: ScrollConfiguration(
        behavior: NoGlowScrollBehavior(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Image.asset(
                AppAssets.authHeader,
                height: 245,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                color: context.colors.label,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: ListView(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: LoginInputTypes.values.length,
                        itemBuilder: (context, index) {
                          final type = LoginInputTypes.values[index];
                          return LoginInput(
                            onChanged: (changed) => _onChanged(changed, type),
                            hint: type.getTitle(context.localization),
                            initialValue: getInitialValue(
                              context.localization,
                              type,
                              loginController,
                            ),
                            obscureText: type == LoginInputTypes.password,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 16),
                      ),
                      const SizedBox(height: 20),
                      AttachmentSendButton(
                        padding: EdgeInsets.zero,
                        isAgreementAccepted: controller.isAgreementAccepted,
                        onPressed: () async {
                          _inputs.forEach(
                            (key, value) =>
                                setControllerData(key, loginController),
                          );
                          final token = await notifier.register();
                          ref
                              .read(accessTokenProvider.notifier)
                              .update((state) => token);
                          Navigator.pushNamed(context, Routes.events.name);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 60,
              ),
              color: context.colors.background,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: AgreementCheckbox(
                    onChanged: (isChecked) => notifier.check(isChecked!),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
