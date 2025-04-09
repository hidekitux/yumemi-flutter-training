import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/screens/initial_screen.dart';

mixin OnLayoutBuiltMixin on State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(WidgetsBinding.instance.endOfFrame.then((_) => onLayoutBuilt()));
  }

  void onLayoutBuilt();
}
