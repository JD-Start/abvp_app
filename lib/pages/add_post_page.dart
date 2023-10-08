import 'dart:typed_data';

import 'package:abvp_app/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});
  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  TextEditingController event_title = TextEditingController();
  TextEditingController event_description = TextEditingController();
  Uint8List? _file;

  getImage() async {
    Uint8List file = await pickImage(ImageSource.gallery);
    setState(() {
      _file = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                'નવી પોસ્ટ કરો',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade600,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: Colors.orange.shade300, width: 2)),
                child: Column(
                  children: [
                    _file != null
                        ? Image(image: MemoryImage(_file!))
                        : Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_a_photo, size: 48),
                              ),
                              Text(
                                '(Image optional)',
                                style: TextStyle(
                                    fontSize: 14, fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: event_title,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.number,
                      onTap: () {},
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          borderSide: BorderSide(
                            color: Colors.orange.shade300,
                            width: 1.5,
                          ),
                        ),
                        label: Text(
                          'પોસ્ટ નું નામ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            // color: Colors.orange.shade800,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: event_description,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.number,
                      onTap: () {},
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          borderSide: BorderSide(
                            color: Colors.orange.shade300,
                            width: 1.5,
                          ),
                        ),
                        label: Text(
                          'વિગત',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            // color: Colors.orange.shade800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                clipBehavior: Clip.antiAlias,
                onPressed: () {},
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(8),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orange.shade300),
                  fixedSize: MaterialStateProperty.all(const Size(150, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                child: const Text(
                  'પોસ્ટ કરો ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Uint8List file = await pickImage(ImageSource.gallery);
