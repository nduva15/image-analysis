import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:varroa_counter/presentation/common/theme/waggle_dance.dart';
import 'package:waggle_widgets/presentation/common/widgets/gap.dart';

class LoadingCard extends StatelessWidget {
  final String text;

  const LoadingCard({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SpinKitWave(
              itemCount: 4,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        gap32,
        Text(text)
      ],
    );
  }
}

class ProgressLoadingWidget extends StatelessWidget {
  const ProgressLoadingWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      elevation: theme.brightness == Brightness.light ? 2 : 0,
      borderOnForeground: true,
      color: theme.waggle().surface.surface2,
      child: Container(
        height: 71,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            width: 0,
            color: theme.waggle().surface.surface1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const LinearProgressIndicator(), Text(text)],
        ),
      ),
    );
  }
}
