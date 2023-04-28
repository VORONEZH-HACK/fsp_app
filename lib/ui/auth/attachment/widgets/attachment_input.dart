import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../ghost_icon_button.dart';

class AttachmentInput extends StatelessWidget {
  const AttachmentInput({
    Key? key,
    required this.onTap,
    required this.isLoading,
    this.fileName,
  }) : super(key: key);

  final VoidCallback onTap;
  final String? fileName;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: SizedBox(
        height: 48,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.primary,
            border: Border.all(
              color: fileName != null
                  ? context.colors.secondary
                  : context.colors.darkLabel,
              width: 1,
            ),
          ),
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      fileName ?? context.localization.attach_file,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: context.texts.body2.copyWith(
                        fontWeight: FontWeight.w300,
                        color: fileName != null
                            ? context.colors.darkLabel
                            : context.colors.label,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  isLoading
                      ? SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            color: context.colors.secondary,
                          ),
                        )
                      : GhostIconButton(
                          icon: Icon(
                            Icons.attach_file,
                            color: context.colors.label,
                          ),
                          onPressed: onTap,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
