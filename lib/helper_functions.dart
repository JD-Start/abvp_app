import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

DropdownMenuItem DropdownMenuItem_widget(String title, int value) {
  return DropdownMenuItem(
    value: value,
    child: Text(
      title,
      style: TextStyle(
        fontSize: value == 0 ? 22 : 18,
        fontWeight: FontWeight.bold,
        color: value == 0 ? Colors.orange.shade300 : Colors.grey.shade500,
      ),
    ),
  );
}

pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? file = await imagePicker.pickImage(source: source);

  if (file != null) {
    return await file.readAsBytes();
  }
  print('No Image selected');
}
