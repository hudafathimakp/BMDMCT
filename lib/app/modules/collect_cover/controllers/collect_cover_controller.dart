import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CollectCoverController extends GetxController {
  //TODO: Implement CollectCoverController

  TextEditingController dateController =
      TextEditingController(text: getFormatedDate(DateTime.now().toString()));
  final count = 0.obs;
  DateTime selectedDate = DateTime.now();
  @override
  void onInit() {
    super.onInit();
  }

  void onDateSelected(DateTime date) {
    selectedDate = date;
    update();
  }
}

String getFormatedDate(String date) {
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
  var inputDate = inputFormat.parse(date);
  var outputFormat = DateFormat('dd/MM/yyyy');
  return outputFormat.format(inputDate);
}
