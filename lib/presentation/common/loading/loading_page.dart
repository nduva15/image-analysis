import 'package:flutter/material.dart';

import '../../../application/l10n/l10n.dart';
import 'loading_card.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingCard(
        text: Localize.of(context).common_text_loading,
      ),
    );
  }
}
