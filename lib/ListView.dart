import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<String> imageNames = [
    'burger',
    'Cheesepizza'
    'Noodles',
    'Bluehills'

    // Add more image names as needed
  ];

  MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('$index'),
              title: Text(imageNames[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: imageNames.length,
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 2,

            );
          },
        ),
      ),
    );
  }
}