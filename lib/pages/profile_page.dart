import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          CircleAvatar(
              minRadius: 20,
              // backgroundColor: Colors.deepOrangeAccent.withOpacity(0.3),
              child: CircleAvatar(
                minRadius: 56,
                child: Image.asset('images/abvp_logo.png', height: 220),
                // NetworkImage(
                //   'https://upload.wikimedia.org/wikipedia/en/3/3d/Akhil_Bharatiya_Vidyarthi_Parishad_official_logo.png',
                // ),
              )),
          const Text(
            'Name',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Post',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Divider(),
          Row(
            children: [
              Icon(
                Icons.phone,
                size: 24,
                color: Colors.orange.shade300,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Contact number',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                '9876543210',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.mail,
                size: 28,
                color: Colors.orange.shade300,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Email Id',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'example@email.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.graduationCap,
                color: Colors.orange.shade300,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Education',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Education list',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                'Other info',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Info',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
