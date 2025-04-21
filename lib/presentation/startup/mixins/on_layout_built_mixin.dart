import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/startup/views/startup_view.dart';

mixin OnLayoutBuiltMixin on State<StartupView> {
  @override
  void initState() {
    super.initState();
    unawaited(WidgetsBinding.instance.endOfFrame.then((_) => onLayoutBuilt()));
  }

  void onLayoutBuilt();
}
