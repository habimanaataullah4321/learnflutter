import 'package:flutter/material.dart';

class LearnFlutterPage extends StatelessWidget {
  LearnFlutterPage({Key? key}) : super(key: key);
  bool isSwitch = false;
  bool isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Fluteer'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/eistein.jpg'),
          const Divider(
            color: Colors.black,
          ),
          Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('Elevated Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('OutlinedButton');
            },
            child: const Text('OutlinedButton'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('TextButton');
            },
            child: const Text('TextButton'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text('Row widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                isSwitch = newBool;
              }),
          Checkbox(value: isCheckbox, onChanged: (bool? newBool) {})
        ],
      ),
    );
  }
}
