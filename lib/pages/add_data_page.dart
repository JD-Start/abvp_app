import 'package:abvp_app/data.dart';
import 'package:abvp_app/widgets/add_data_card.dart';
import 'package:flutter/material.dart';

class AddDataPage extends StatefulWidget {
  int districtIndex;
  AddDataPage({super.key, required this.districtIndex});
  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.districtIndex);
    String districtName = district_list[widget.districtIndex];

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              districtName,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.orange.shade300,
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              height: MediaQuery.of(context).size.height - 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return AddDataCard(
                    tehsilName: districtAndTehsilDataList[districtName][index],
                  );
                },
                itemCount: districtAndTehsilDataList[districtName].length,
              ),
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
                'Submit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
