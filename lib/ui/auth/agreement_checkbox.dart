import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers.dart';
import '../../utils/extensions.dart';

class AgreementCheckbox extends ConsumerWidget {
  const AgreementCheckbox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(authControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        children: [
          Checkbox(
            value: controller.isAgreementAccepted,
            onChanged: onChanged,
            activeColor: context.colors.secondary,
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Text(
              context.localization.agreement,
              softWrap: true,
              style: context.texts.body2.copyWith(
                fontWeight: FontWeight.w300,
                color: context.colors.label,
              ),
            ),
          )
        ],
      ),
    );
  }
}
