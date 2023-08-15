import 'package:flutter/material.dart';

class RouterUtils {
  static void push({
    required BuildContext context,
    required Widget view,
}) {
    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context){
          return view;
          },
        ),
    );
  }

  static void pop(BuildContext context){
    Navigator.of(context).pop();
  }

  static void pushReplacement ({
    required BuildContext context,
    required Widget view,
}) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) {
              return view;
            },
        ),
    );
  }

  static void pushAndPopAll ({
    required BuildContext context,
    required Widget view,
  }) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) {
          return view;
        },
      ),
        (route) => false,
    );
  }

  static Route _getRoute(Widget view){
    return MaterialPageRoute(
      builder: (context) => view,
    );
  }
}