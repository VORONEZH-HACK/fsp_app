import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/enum/routes.dart';
import '../../../domain/providers.dart';
import '../../../utils/assets.dart';
import '../../../utils/extensions.dart';
import '../../back_app_bar.dart';
import '../agreement_checkbox.dart';
import 'widgets/attachment_description.dart';
import 'widgets/attachment_input.dart';
import 'widgets/attachment_send_button.dart';

class AttachmentScreen extends ConsumerWidget {
  const AttachmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(authControllerProvider);
    final notifier = ref.watch(authControllerProvider.notifier);

    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const BackAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Image.asset(
              AppAssets.authHeader,
              height: 245,
            ),
          ),
          const SizedBox(height: 64),
          Container(
            color: context.colors.label,
            child: Column(
              children: [
                const SizedBox(height: 14),
                const AttachmentDescription(),
                const SizedBox(height: 4),
                AttachmentInput(
                  onTap: () => notifier.attachFile(),
                  isLoading: notifier.isLoading,
                  fileName: notifier.fileName,
                ),
                const SizedBox(height: 10),
                AttachmentSendButton(
                  isAgreementAccepted: controller.isAgreementAccepted,
                  onPressed: () => notifier.sendFile().then(
                        (value) => Navigator.pushNamed(
                          context,
                          Routes.login.name,
                        ),
                      ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          const SizedBox(height: 44),
          AgreementCheckbox(
            onChanged: (isChecked) => notifier.check(isChecked!),
          ),
        ],
      ),
    );
  }
}
