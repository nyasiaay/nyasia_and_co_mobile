import 'package:flutter/material.dart';
import 'package:nyasia_and_co/models/item.dart';
import 'package:nyasia_and_co/screens/list_item.dart';
import 'package:nyasia_and_co/widgets/left_drawer.dart';

class DetailItemPage extends StatelessWidget {
  final Item item;

  const DetailItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Color.fromARGB(255, 125, 216, 201),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${item.fields.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Amount: ${item.fields.amount}'),
            SizedBox(height: 10),
            Text('Description: ${item.fields.description}'),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ItemPage()),
                );
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
