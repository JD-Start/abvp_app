import 'package:abvp_app/data.dart';
import 'package:abvp_app/pages/add_data_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectEventPage extends StatefulWidget {
  const SelectEventPage({super.key});
  @override
  State<SelectEventPage> createState() => _SelectEventPageState();
}

class _SelectEventPageState extends State<SelectEventPage> {
  int eventIndex = 0;
  int yearIndex = 0;
  int districtIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.orange.shade300, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'કાર્યક્રમ, વર્ષ અને જિલ્લો પસંદ કરો',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade600,
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.orange.shade300,
                        )),
                    child: DropdownButton(
                      alignment: Alignment.center,
                      underline: const SizedBox.shrink(),
                      iconSize: 32,
                      value: yearIndex,
                      autofocus: true,
                      borderRadius: BorderRadius.circular(12),
                      iconEnabledColor: Colors.orange.shade300,
                      items: event_data,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          yearIndex = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.orange.shade300,
                        )),
                    child: DropdownButton(
                      alignment: Alignment.center,
                      underline: const SizedBox.shrink(),
                      iconSize: 32,
                      value: eventIndex,
                      borderRadius: BorderRadius.circular(12),
                      iconEnabledColor: Colors.orange.shade300,
                      items: year_data,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          yearIndex = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.orange.shade300,
                        )),
                    child: DropdownButton(
                      alignment: Alignment.center,
                      underline: const SizedBox.shrink(),
                      iconSize: 32,
                      value: districtIndex,
                      borderRadius: BorderRadius.circular(12),
                      iconEnabledColor: Colors.orange.shade300,
                      items: district_data,
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
              Flexible(
                child: Text(
                  '---  સૂચનાઓ ---',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                clipBehavior: Clip.antiAlias,
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => AddDataPage(
                          districtIndex: districtIndex,
                        ),
                      ));
                },
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
                  'Submit',
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
