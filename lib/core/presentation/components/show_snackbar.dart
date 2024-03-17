import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackbar(
        {required String title,
        required String message,
        required IconData iconData,
        Color? iconColor}) =>
    Get.showSnackbar(GetSnackBar(
      backgroundColor: Theme.of(Get.context!).primaryColor,
      titleText: Text(
        title,
        style: TextStyle(
            fontWeight: Theme.of(Get.context!).textTheme.titleSmall?.fontWeight,
            fontSize: Theme.of(Get.context!).textTheme.bodyMedium?.fontSize,
            color: Colors.white,
            overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
      messageText: Text(
        message,
        style: TextStyle(
            fontWeight: Theme.of(Get.context!).textTheme.bodyMedium?.fontWeight,
            fontSize: Theme.of(Get.context!).textTheme.bodyMedium?.fontSize,
            color: Colors.white,
            overflow: TextOverflow.ellipsis),
        maxLines: 2,
      ),
      icon: Icon(
        iconData,
        size: 24,
        color: textWhite900,
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      shouldIconPulse: false,
      borderRadius: 16,
      isDismissible: true,
    ));
