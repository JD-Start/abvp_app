import 'package:abvp_app/widgets/news_card_widget.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              NewsCardWidget(
                title: 'Topic-1',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet odio vitae mauris vestibulum cursus. Etiam tristique, odio nec lobortis sodales, justo lacus tempus justo, et dictum enim lacus sed elit. Praesent ultricies et sapien ac dignissim. Sed faucibus ligula ac nunc blandit, vel pharetra ligula sollicitudin. Pellentesque lacinia vulputate magna vel consectetur. Quisque maximus ac augue a sollicitudin. Sed velit tortor, semper eget lacinia quis, convallis id urna. Quisque fermentum lacinia nulla, eget fermentum purus sodales at. Proin non risus eget dui dapibus pellentesque in a ante. Morbi nec sapien consectetur, tempus risus a, molestie erat.',
                date: '4/7/2023',
              ),
              NewsCardWidget(
                title: 'Topic-2',
                description:
                    'Fusce tempus, orci sed sodales vestibulum, mauris libero ultrices elit, dictum aliquam risus justo ac enim. Morbi aliquet justo tincidunt justo sodales eleifend. In elit magna, interdum a nunc quis, aliquet cursus justo. Curabitur vitae ligula tellus. Proin dapibus tincidunt aliquet. Aliquam ultricies condimentum aliquet. Integer laoreet iaculis lacus non dapibus.',
                date: '3/4/2023',
              ),
              NewsCardWidget(
                title: 'Topic-3',
                description:
                    'Pellentesque tempus euismod ex, sed luctus ex sollicitudin elementum. Vestibulum id consequat erat, eget tempus arcu. Nulla lacinia nunc ut consectetur mattis. Aliquam viverra ex vitae libero pulvinar hendrerit. Sed eu erat vitae sapien pharetra volutpat in ut sem. Duis a dolor rhoncus, auctor mi id, porttitor est. Morbi a neque consectetur, tincidunt orci a, maximus risus. In hac habitasse platea dictumst. Aenean eleifend risus orci, nec lacinia tellus consequat vitae. Quisque eu urna molestie, convallis nibh id, suscipit elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam elementum nec leo eget malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
                date: '1/2/2023',
              ),
              NewsCardWidget(
                  title: 'ગુજરાતી ભાષા આપનું ગૌરવ',
                  description: 'જય જય ગરવી ગુજરાત ',
                  date: '૯/૯/૨૦૨૩'),
            ],
          ),
        ),
      ),
    );
  }
}
