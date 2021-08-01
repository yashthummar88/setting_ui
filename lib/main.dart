import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting/screens/android/android.dart';
import 'package:setting/screens/ios/ios.dart';

void main() {
  (Platform.isAndroid == true)
      ? runApp(MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Android(),
        ))
      : runApp(CupertinoApp(
          home: Plat(),
        ));
}
