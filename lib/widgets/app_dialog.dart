import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    required this.title,
    this.subtitle,
  });

  static void show(
      BuildContext context, {
        required String title,
        String? subtitle,
  }) {
    showDialog(
        context: context,
        builder: (context) => AppDialog(
            title: title,
            subtitle: subtitle,
        ),
    );
  }

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
