import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

class AttachmentDescription extends StatelessWidget {
  const AttachmentDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          context.localization.file_description,
          style: context.texts.body3.copyWith(
            color: context.colors.darkLabel,
          ),
        ),
      ),
    );
  }
}
