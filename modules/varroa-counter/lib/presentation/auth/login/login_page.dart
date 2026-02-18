import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:waggle_auth/presentation/auth/login/login_widget.dart';
import 'package:waggle_auth/presentation/auth/widgets/auth_snackbar_builder.dart';
import 'package:waggle_widgets/presentation/common/widgets/responsive_layout.dart';

import '../../../application/l10n/l10n.dart';
import '../../../config/keys.dart';
import '../../routes.gr.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = Localize.of(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          key: keyLoginPage,
          appBar: AppBar(
            title: Text(l10n.auth_title_loginPage),
          ),
          body: ResponsiveCenteredLayout(
            child: LoginWidget(
              passwordlessLoginButtonText:
                  kIsWeb ? null : l10n.auth_button_passwordlessLogin,
              googleLoginButtonText:
                  kIsWeb ? null : l10n.auth_button_googleLogin,
              facebookLoginButtonText: l10n.auth_button_facebookLogin,
              appleLoginButtonText: l10n.auth_button_appleLogin,
              onForgotPasswordTap: () {
                context.router.push(
                  const ForgottenPasswordRoute(),
                );
              },
              onCreateAccountPressed: () {
                context.router.push(const CreateAccountRoute());
              },
              onLoginSuccesfull: (failureOrSuccess, emailSent) {
                return AuthSnackbarBuilder(
                  context: context,
                  failureOrSuccess: failureOrSuccess,
                  onSuccessMessage:
                      emailSent ? "Email Sent" : l10n.auth_message_loginSuccess,
                ).show();
              },
            ),
          )),
    );
  }
}
