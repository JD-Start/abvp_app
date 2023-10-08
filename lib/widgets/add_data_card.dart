import 'package:flutter/material.dart';

class AddDataCard extends StatefulWidget {
  String tehsilName;
  AddDataCard({super.key, required this.tehsilName});
  @override
  State<AddDataCard> createState() => _AddDataCardState();
}

class _AddDataCardState extends State<AddDataCard> {
  TextEditingController event_count = TextEditingController();
  TextEditingController college_count = TextEditingController();
  TextEditingController hostel_count = TextEditingController();
  TextEditingController nagar_count = TextEditingController();
  TextEditingController boys_count = TextEditingController();
  TextEditingController girls_count = TextEditingController();
  TextEditingController teachers_count = TextEditingController();
  TextEditingController other_count = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: Colors.grey.shade300,
          border: Border.all(
            color: Colors.orange.shade400,
            width: 1.5,
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.tehsilName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 4,
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: event_count,
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
                'કેટલા કાર્યક્રમ ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: college_count,
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
                'કેટલી કોલેજ માં ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: hostel_count,
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
                'કેટલા હોસ્ટેલ માં ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nagar_count,
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
                'કેટલા ગામ માં ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'સહભાગિતા ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
          TextField(
            controller: boys_count,
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
                'ભાઈઓ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: girls_count,
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
                'બહેનો',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: teachers_count,
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
                'પ્રાધ્યાપકો',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: other_count,
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
                'અન્ય',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Colors.orange.shade800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'કુલ:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade300,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '50',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
