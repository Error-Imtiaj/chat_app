import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Myloading extends StatelessWidget {
  const Myloading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      child: Center(
        child: Lottie.network(
          'https://lottie.host/1946e16d-493b-49b7-b722-8a4144ee7825/MzsSlCd2Nf.json',
        ),
      ),
    );
  }
}
