import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waggle_widgets/presentation/common/widgets/responsive_layout.dart';
import '../../../config/keys.dart';
import 'package:waggle_auth/presentation/auth/reset_password/reset_password_widget.dart';

import '../../../application/l10n/l10n.dart';
import '../../routes.gr.dart';


class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = Localize.of(context);
    return Scaffold(
      key: keyResetPasswordPage,
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.auth_title_resetPasswordPage),
      ),
      body: ResponsiveCenteredLayout(
        child: ResetPasswordWidget(
          authRouteLoginText: l10n.auth_route_login,
          authRouteCreateAccountText: l10n.auth_route_createAccount,
          authMessageEmailSentText: l10n.auth_message_emailSent,
          authTextResetPasswordInstructions:
              l10n.auth_text_resetPasswordInstructions,
          commonMessageContact: l10n.common_message_contact,
          authButtonResetPassword: l10n.auth_button_resetPassword,
          authButtonLogin: l10n.auth_button_login,
          onCreateAccountPressed: () => context.router.popAndPush(
            const CreateAccountRoute(),
          ),
          onResetPasswordPressed: () => context.router.replaceAll(
            [const LoginRoute()],
          ),
          emailValidator: (value) => value.fold(
              (l) => l10n.common_error_valueFailure(l.code), (r) => null),
        ),
      ),
    );
  }
}
