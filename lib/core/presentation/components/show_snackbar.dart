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
            fontWeight: Theme.of(Get.context!).textTheme.bodyMedium?.fontWeight,
            fontSize: Theme.of(Get.context!).textTheme.bodyMedium?.fontSize,
            color: Colors.white,
            overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
      messageText: Text(
        message,
        style: TextStyle(
            fontWeight: Theme.of(Get.context!).textTheme.bodySmall?.fontWeight,
            fontSize: Theme.of(Get.context!).textTheme.bodySmall?.fontSize,
            color: Colors.white,
            overflow: TextOverflow.ellipsis),
        maxLines: 2,
      ),
      icon: Icon(
        iconData,
        size: 24,
        color: iconColor ?? Theme.of(Get.context!).primaryColor,
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      duration: const Duration(seconds: 2),
      shouldIconPulse: false,
      borderRadius: 16,
      isDismissible: true,
    ));
