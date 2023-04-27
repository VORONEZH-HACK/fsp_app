import 'package:flutter/material.dart';

import '../../domain/enum/routes.dart';
import '../../utils/assets.dart';
import '../../utils/extensions.dart';
import '../flat_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.authHeader,
              height: 245,
            ),
            const SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: FlatButton(
                      title: context.localization.resume,
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.resume.name),
                      titleColor: context.colors.primary,
                      titleStyle: context.texts.body2.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                      backgroundColor: context.colors.secondary,
                      borderWidth: 0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: FlatButton(
                      titleWidget: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '${context.localization.handmade} ',
                              style: context.texts.body2.copyWith(
                                color: context.colors.background,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: context.localization.deprecated,
                              style: context.texts.body2.copyWith(
                                color: context.colors.label,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.login.name),
                      backgroundColor: context.colors.primary,
                      borderWidth: 0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 64),
            Text(
              context.localization.auth_description,
              style: context.texts.body2.copyWith(
                color: context.colors.darkLabel,
              ),
            )
          ],
        ),
      ),
    );
  }
}
