import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waggle_widgets/presentation/common/widgets/responsive_layout.dart';
import 'package:waggle_auth/presentation/auth/create_account/create_account_widget.dart';
import '../../../config/keys.dart';

import '../../../application/l10n/l10n.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = Localize.of(context);

    return Scaffold(
      key: keyCreateAccountPage,
      appBar: AppBar(
        title: Text(l10n.auth_title_createAccountPage),
      ),
      body: ResponsiveCenteredLayout(
        child: CreateAccountWidget(
          onLoginPressed: () {
            context.router.pop();
          },
        ),
      ),
    );
  }
}
