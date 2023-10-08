import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController tx1 = TextEditingController();
    TextEditingController tx2 = TextEditingController();
    TextEditingController tx3 = TextEditingController();
    TextEditingController tx4 = TextEditingController();
    TextEditingController tx5 = TextEditingController();

    int districtIndex = 1;
    int tehsilIndex = 1;
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          // select District and Tehsil using drop down menu
          Container(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
            child: Column(
              children: [
                // select district
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Select District',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: DropdownButton(
                        alignment: Alignment.center,
                        underline: const SizedBox.shrink(),
                        iconSize: 20,
                        value: districtIndex,
                        borderRadius: BorderRadius.circular(12),
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text(
                              'First',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text(
                              'Second',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text(
                              'Third',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            districtIndex = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Select Tehsil',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: DropdownButton(
                        alignment: Alignment.center,
                        underline: const SizedBox.shrink(),
                        iconSize: 20,
                        value: tehsilIndex,
                        borderRadius: BorderRadius.circular(12),
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text(
                              'First',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text(
                              'Second',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text(
                              'Third',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            tehsilIndex = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Input fields to get data from user

          TextField(
            controller: tx1,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                label: const Text(
                  'tx1',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                hintText: 'Something',
                prefixIcon: Icon(
                  Icons.mail,
                  size: 24,
                  color: Colors.grey.shade300,
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          TextField(
            controller: tx2,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                label: const Text(
                  'tx2',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                hintText: 'Something',
                prefixIcon: Icon(
                  Icons.mail,
                  size: 24,
                  color: Colors.grey.shade300,
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          TextField(
            controller: tx3,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                label: const Text(
                  'tx3',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                hintText: 'Something',
                prefixIcon: Icon(
                  Icons.mail,
                  size: 24,
                  color: Colors.grey.shade300,
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          TextField(
            controller: tx4,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                label: const Text(
                  'tx4',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                hintText: 'Something',
                prefixIcon: Icon(
                  Icons.mail,
                  size: 24,
                  color: Colors.grey.shade300,
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          TextField(
            controller: tx5,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                label: const Text(
                  'tx5',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                hintText: 'Something',
                prefixIcon: Icon(
                  Icons.mail,
                  size: 24,
                  color: Colors.grey.shade300,
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            clipBehavior: Clip.antiAlias,
            onPressed: () {},
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(8),
              backgroundColor:
                  const MaterialStatePropertyAll(Colors.orangeAccent),
              fixedSize: MaterialStateProperty.all(const Size(150, 50)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
