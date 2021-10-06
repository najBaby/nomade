import 'package:flutter/material.dart';

import 'screen/home.dart';

void main() =>
  runApp(_App());


class _App extends StatelessWidget {
  ThemeData get theme {
    return ThemeData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScaffold(),
      theme: theme,
    );
  }
}
