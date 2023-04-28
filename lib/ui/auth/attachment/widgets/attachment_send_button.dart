import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../flat_button.dart';

class AttachmentSendButton extends StatelessWidget {
  const AttachmentSendButton({
    Key? key,
    required this.isAgreementAccepted,
    required this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 32.0),
  }) : super(key: key);

  final bool isAgreementAccepted;
  final VoidCallback onPressed;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    debugPrint('isAgreementAccepted: $isAgreementAccepted');
    return Padding(
      padding: padding,
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: FlatButton(
          padding: EdgeInsets.zero,
          onPressed: () => isAgreementAccepted ? onPressed.call() : null,
          overlayColor: isAgreementAccepted ? null : Colors.transparent,
          splashFactory: isAgreementAccepted ? null : NoSplash.splashFactory,
          title: context.localization.send,
          titleColor: isAgreementAccepted
              ? context.colors.primary
              : context.colors.background,
          titleStyle: context.texts.body2.copyWith(
            fontWeight: FontWeight.w300,
          ),
          backgroundColor: isAgreementAccepted
              ? context.colors.secondary
              : context.colors.primary,
          borderColor: context.colors.darkLabel,
          borderWidth: 1,
        ),
      ),
    );
  }
}
