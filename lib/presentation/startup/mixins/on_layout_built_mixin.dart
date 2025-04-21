import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/startup/views/initial_view.dart';

mixin OnLayoutBuiltMixin on State<InitialView> {
  @override
  void initState() {
    super.initState();
    unawaited(WidgetsBinding.instance.endOfFrame.then((_) => onLayoutBuilt()));
  }

  void onLayoutBuilt();
}
