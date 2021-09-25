import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route52/models/bin.dart';
import 'package:route52/helpers/show_loading.dart';

class APIController extends GetxController {
  static APIController instance = Get.find();
  Rxn<Bin> bin = Rxn<Bin>();

  @override
  void onReady() {
    super.onReady();

    // firebaseUser.bindStream(_auth.userChanges());
    // ever(firebaseUser, _setInitialScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
